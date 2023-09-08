import 'package:dcbase/dcbase.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g_tracker/AppComponents/common.dart';
import 'package:g_tracker/AppComponents/common_dialog.dart';
import 'package:g_tracker/network/models/response/members/member.dart';
import 'package:g_tracker/network/models/response/place/place.dart';
import 'package:g_tracker/network/network_provider.dart';
import 'package:g_tracker/ui/geofence/list/geofence_list_vm.dart';
import 'package:g_tracker/widgets/custom_alert_dialog.dart';
import '../../../Helper/routes/route_name.dart';
import 'package:g_tracker/widgets/common_button.dart';
import 'package:g_tracker/AppComponents/app_colors.dart' as ac;

class GeofenceListScreen extends ConsumerStatefulWidget {
  const GeofenceListScreen({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState<GeofenceListScreen> createState() => _MemberListScreenState();
}

class _MemberListScreenState extends ConsumerState<GeofenceListScreen> {
  late final GeofenceListVm geofenceListVm;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Geofence"),
      ),
      body: BaseWidget<GeofenceListVm>(
        model: GeofenceListVm(ref.read(placeRepositoryProvider)),
        onModelReady: (model) {
          geofenceListVm = model;
          model.fetchGeofenceList();
        },
        builder: (context, model, child) {
          return ScreenStateAwareView(
            screenState: model.screenStateNotifier,
            empty: const Text("No Geofence"),
            progress: const Center(
              child: CircularProgressIndicator(),
            ),
            child: ValueListenableBuilder<List<Place>>(
              valueListenable: model.placeNotifier,
              builder: (context, places, child) {
                return ListView.separated(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  separatorBuilder: ((context, index) =>
                      SizedBox(height: 12.h)),
                  itemBuilder: (context, index) {
                    final place = places[index];
                    return ListTile(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.r)),
                      tileColor: ac.AppColors.lightGreyColor,
                      title: Text(place.name),
                      trailing: GestureDetector(
                        onTap: () {
                          showDeleteDialog(context, index, place.id);
                        },
                        child: Image.asset(
                          "assets/images/close.png",
                          height: 20.h,
                          width: 20.w,
                        ),
                      ),
                    );
                  },
                  itemCount: places.length,
                );
              },
            ),
          );
        },
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(width: 24.w),
              Expanded(
                child: CommonButton(
                  onPress: _openAddScreen,
                  title: "Add +",
                  color: ac.AppColors.themeColor,
                ),
              ),
              SizedBox(width: 24.w),
            ],
          ),
        ),
      ),
    );
  }

  Future<dynamic> showDeleteDialog(BuildContext context, int index, placeId) {
    return showDialog(
      context: context,
      builder: (BuildContext dialogContext) {
        return CustomAlertDialog(
          heading: "Delete Geofence",
          subHeading: "Are You Sure\nYou Want To Delete Geofence?",
          onYesTab: () {
            Navigator.pop(dialogContext);
            CommonDialog.showLoadingDialog(context);
            geofenceListVm.deleteGeofence(
                index: index,
                placeId: placeId,
                onSuccess: (message) {
                  Navigator.pop(context);
                },
                onFailure: (message) {
                  Navigator.pop(context);
                });
          },
        );
      },
    );
  }

  void _openAddScreen() async {
    Navigator.pushNamed(context, RouteName.addGeofenceScreen).then((value) {
      if (value == true) {
        geofenceListVm.fetchGeofenceList();
      }
    });
  }
}
