import 'package:dcbase/dcbase.dart';
import 'package:flutter/cupertino.dart';
import 'package:g_tracker/network/models/request/place/assign_place/assign_place_request.dart';
import 'package:g_tracker/network/models/response/place/place.dart';
import 'package:g_tracker/network/repository/place_repository.dart';

class AssignGeofenceVm extends BaseViewModel {
  final ValueNotifier<List<Place>> placeNotifier = ValueNotifier([]);
  final PlaceRepository placeRepository;

  AssignGeofenceVm(this.placeRepository) {
    fetchGeofenceList();
  }

  Future<void> fetchGeofenceList() async {
    await placeRepository.fetchPlaces().then((value) {
      placeNotifier.value = value;
      if (value.isNotEmpty) {
        changeUiState(ScreenState.content);
      } else {
        changeUiState(ScreenState.empty);
      }
    });
    //     .onError((error, stackTrace) {
    //   changeUiState(ScreenState.error);
    // });
  }

  Future<void> assignGeofence({
    required AssignPlaceRequest request,
    ValueChanged<String>? onSuccess,
    ValueChanged<String>? onFailure,
  }) async {
    changeUiState(ScreenState.apiProgress);
    await placeRepository
        .assignPlaces(request: request)
        .then((value) => onSuccess?.call(value.message))
        .onError((error, stackTrace) {
      logD("Adding Place ${ErrorParser.parseAsSingleMessage(error)}",
          stackTrace: stackTrace);
      onFailure?.call(ErrorParser.parseAsSingleMessage(error));
    }).whenComplete(() => changeUiState(ScreenState.content));
  }
}
