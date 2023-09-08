import 'dart:async';
import 'package:dcbase/dcbase.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:g_tracker/AppComponents/common.dart';
import 'package:g_tracker/AppComponents/images.dart';
import 'package:g_tracker/network/models/request/user/sendCurrentLocation/send_current_location_request.dart';
import 'package:g_tracker/network/models/response/device/trackable_device.dart';
import 'package:g_tracker/network/models/response/members/members_location/members_location_response.dart';
import 'package:g_tracker/network/models/response/user/user_send_location/user_send_location_response.dart';
import 'package:g_tracker/network/repository/circle_repository.dart';
import 'package:g_tracker/network/repository/member_repository.dart';
import 'package:g_tracker/network/repository/user_repository.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:g_tracker/network/models/response/circles/circle.dart' as c;

class DashBoardScreenVm extends BaseViewModel {
  final CircleRepository circleRepository;
  final MemberRepository memberRepository;
  final UserRepository userRepository;

  c.Circle? circleValue;

  List<MembersLocations> membersList = [];
  bool isMemberLocationLoading = true;

  final ValueNotifier<List<TrackableDevice>> devicesNotifier =
      ValueNotifier([]);
  final ValueNotifier<List<c.Circle>> circlesNotifier = ValueNotifier([]);
  double? latitude;
  double? longitude;
  String currentAddress = "";

  Timer? timer;
  Timer? memberLocationsTimer;
  Set<Marker> markers = {};

  DashBoardScreenVm(
      this.circleRepository, this.memberRepository, this.userRepository) {}

  Future<void> sendLocation({
    required SendCurrentLocationRequest request,
    ValueChanged<List<UserSendLocations>>? onSuccess,
    ValueChanged<String>? onFailure,
  }) async {
    logD("request is");
    logD(request);
    await userRepository
        .sendCurrentLocation(request: request)
        .then((value) => onSuccess?.call(value))
        .onError((error, stackTrace) {
      logD("send location ${ErrorParser.parseAsSingleMessage(error)}",
          stackTrace: stackTrace);
      onFailure?.call(ErrorParser.parseAsSingleMessage(error));
    });
  }

  Future<dynamic> fetchCircles({ValueChanged<String>? onSuccess}) async {
    circleRepository.circles().then((value) {
      circlesNotifier.value = value;
      onSuccess!.call("");
      if (value.isNotEmpty) {
        circleValue = value[0];
      }
      changeUiState(ScreenState.content);
    }).onError((error, stackTrace) {
      logD("Circles fetch error $error", stackTrace: stackTrace);
    });
  }

  Future<dynamic> fetchMembersFromCircle({
    required ValueChanged<int>? onMarkerTap,
    ValueChanged<String>? onFailure,
    ValueChanged<String>? onSuccess,
  }) async {
    isMemberLocationLoading = true;
    markers.clear();
    memberRepository
        .circleMembers(circleId: circleValue!.id)
        .then((value) async {
      membersList = value;
      isMemberLocationLoading = false;

      // assets icon
      final Uint8List assetsMarkerIcon =
          await Common.getBytesFromAsset(Images.userImage, 70);

      for (var a = 0; a < membersList.length; a++) {
        if (membersList[a].lat != null && membersList[a].lng != null) {
          Uint8List? finalImg;
          if (membersList[a].photo.isNotEmpty) {
            // Network icon

            Uint8List networkMarkerIcon =
                await Common.getBytesFromNetwork(membersList[a].photo);

            finalImg = networkMarkerIcon;
            //
          } else {
            finalImg = assetsMarkerIcon;
          }

          markers.add(Marker(
              markerId: MarkerId("${membersList[a].id}"),
              position: LatLng(membersList[a].lat!, membersList[a].lng!),
              infoWindow: InfoWindow(title: membersList[a].name),
              // icon: BitmapDescriptor.defaultMarker,
              icon: BitmapDescriptor.fromBytes(finalImg),
              onTap: () {
                logD("Marker tapped");

                onMarkerTap!.call(a);
              }));
        }
      }

      onSuccess?.call("");

      logD("Markers length is ${markers.length}");
    }).onError((error, stackTrace) {
      isMemberLocationLoading = false;

      logD("Members fetch error $error", stackTrace: stackTrace);
      if (ErrorParser.parseStatusCode(error) == 400) {
      } else {
        onFailure?.call(ErrorParser.parseAsSingleMessage(error));
      }
    });

    return;
  }
}
