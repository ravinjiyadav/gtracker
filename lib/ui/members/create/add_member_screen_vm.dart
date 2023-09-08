import 'package:dcbase/dcbase.dart';
import 'package:flutter/foundation.dart';
import 'package:g_tracker/network/models/request/member/add_member_request.dart';
import 'package:g_tracker/network/models/response/basic_response.dart';
import 'package:g_tracker/network/models/response/circles/circle.dart';
import 'package:g_tracker/network/models/response/device/trackable_device.dart';
import 'package:g_tracker/network/models/response/members/member_response.dart';
import 'package:g_tracker/network/repository/circle_repository.dart';
import 'package:g_tracker/network/repository/device_repository.dart';
import 'package:g_tracker/network/repository/member_repository.dart';
import 'package:image_picker/image_picker.dart';

class AddMemberScreenVm extends BaseViewModel {
  final MemberRepository memberRepository;
  final CircleRepository circleRepository;
  final DeviceRepository deviceRepository;
  final ValueNotifier<List<TrackableDevice>> devicesNotifier =
      ValueNotifier([]);
  final ValueNotifier<List<Circle>> circlesNotifier = ValueNotifier([]);

  AddMemberScreenVm(
    this.memberRepository,
    this.circleRepository,
    this.deviceRepository,
  ) {
    fetchDevices();
    fetchCircles();
  }

  void fetchCircles() async {
    circleRepository.circles().then((value) {
      //  List<Circle> ownerCircle = [];
      //  for(var a=0;a<value.length;a++){
      //    if(value[a].isOwner == true){
      //      ownerCircle.add(value[a]);
      //    }
      //  }
      //  circlesNotifier.value = ownerCircle;
      //  // circlesNotifier.value = value;

      List<Circle> ownerCircle = value.where((obj) => obj.isOwner).toList();
    }).onError((error, stackTrace) {
      logD("Circles fetch error $error", stackTrace: stackTrace);
    });
  }

  Future<void> addMember({
    XFile? image,
    required AddMemberRequest request,
    ValueChanged<String>? onFailure,
    ValueChanged<BasicResponse>? onSuccess,
  }) async {
    changeUiState(ScreenState.apiProgress);

    logD("add member request");
    logD(request);
    await memberRepository
        .addMember(request: request, image: image)
        .then((value) {
      onSuccess?.call(value);
    }).onError((error, stackTrace) {
      logD("Error adding member $error", stackTrace: stackTrace);
      onFailure?.call(ErrorParser.parseAsSingleMessage(error));
    }).whenComplete(() => changeUiState(ScreenState.content));
  }

  void fetchDevices() async {
    deviceRepository.devices().then((value) {
      devicesNotifier.value = value;
    }).onError((error, stackTrace) {
      logD("Devices fetch error $error", stackTrace: stackTrace);
    });
  }

  void updateDeviceList(TrackableDevice device) {
    if (devicesNotifier.value.isNotEmpty) {
      final list = devicesNotifier.value.toList();
      list.add(device);
      devicesNotifier.value = list;
    } else {
      devicesNotifier.value = [device];
      changeUiState(ScreenState.content);
    }
  }

  void updateCircleList(Circle circle) {
    if (circlesNotifier.value.isNotEmpty) {
      final list = circlesNotifier.value.toList();
      list.add(circle);
      circlesNotifier.value = list;
    } else {
      circlesNotifier.value = [circle];
      changeUiState(ScreenState.content);
    }
  }
}
