import 'package:dcbase/dcbase.dart';
import 'package:flutter/cupertino.dart';
import 'package:g_tracker/network/models/response/place/place.dart';
import 'package:g_tracker/network/repository/place_repository.dart';

class GeofenceListVm extends BaseViewModel {
  final ValueNotifier<List<Place>> placeNotifier = ValueNotifier([]);
  final PlaceRepository placeRepository;

  GeofenceListVm(this.placeRepository);

  Future<void> fetchGeofenceList() async {
    changeUiState(ScreenState.progress);

    await placeRepository.fetchPlaces().then((value) {
      placeNotifier.value = value;
      if (value.isNotEmpty) {
        changeUiState(ScreenState.content);
      } else {
        changeUiState(ScreenState.empty);
      }
    }).onError((error, stackTrace) {
      changeUiState(ScreenState.error);
    });
  }

  Future<void> deleteGeofence({
    required int index,
    required int placeId,
    ValueChanged<String>? onFailure,
    ValueChanged<String>? onSuccess,

  }
      ) async {

    await placeRepository.deletePlace(placeId).then((value) {

      final memberList = placeNotifier.value.toList();
      memberList.removeAt(index);
      placeNotifier.value = memberList;

      onSuccess!.call("");
      if (placeNotifier.value.isNotEmpty) {
        changeUiState(ScreenState.content);
      } else {
        changeUiState(ScreenState.empty);
      }
    }).onError((error, stackTrace) {
      onFailure!.call("");
      changeUiState(ScreenState.error);
    });
  }


}
