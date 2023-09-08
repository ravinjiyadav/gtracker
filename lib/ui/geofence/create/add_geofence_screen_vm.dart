import 'package:dcbase/dcbase.dart';
import 'package:flutter/cupertino.dart';
import 'package:g_tracker/network/models/request/place/add_place_request.dart';
import 'package:g_tracker/network/repository/place_repository.dart';

class AddGeofenceScreenVm extends BaseViewModel {
  final PlaceRepository placeRepository;

  AddGeofenceScreenVm(this.placeRepository);

  Future<void> addGeofence({
    required AddPlaceRequest request,
    ValueChanged<String>? onSuccess,
    ValueChanged<String>? onFailure,
  }) async {
    changeUiState(ScreenState.apiProgress);
    await placeRepository
        .addPlace(request)
        .then((value) => onSuccess?.call(value.message))
        .onError((error, stackTrace) {
      logD("Adding Place ${ErrorParser.parseAsSingleMessage(error)}",
          stackTrace: stackTrace);
      onFailure?.call(ErrorParser.parseAsSingleMessage(error));
    }).whenComplete(() => changeUiState(ScreenState.content));
  }
}
