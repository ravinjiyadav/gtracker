import 'package:dcbase/dcbase.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:g_tracker/AppComponents/routes_file.dart';
import 'package:g_tracker/network/network_provider.dart';
import 'package:g_tracker/ui/auth/mpin/setup/mpin_screen.dart';
import 'package:g_tracker/ui/auth/mpin/setup/set_mpin_screen_vm.dart';

class SetMpinScreen extends ConsumerStatefulWidget {
  final int currentStep;

  const SetMpinScreen({
    Key? key,
    this.currentStep = 4,
  }) : super(key: key);

  @override
  ConsumerState<SetMpinScreen> createState() => _SetMpinScreenState();
}

class _SetMpinScreenState extends ConsumerState<SetMpinScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BaseWidget<SetMpinScreenVm>(
          model: SetMpinScreenVm(ref.read(authRepositoryProvider),
              ref.read(userBoxProvider), ref.read(tokenBoxRepositoryProvider),ref.read(linkBoxProvider)),
          onModelReady: (model) {},
          builder: (context, model, child) {
            return MpinScreen(
              screenState: model.screenStateNotifier,
              title: "Setup Your Account",
              stepNo: widget.currentStep,
              onPinEntered: (String pin) async {
                model.setMpin(
                  pin: pin,
                  currentStep: widget.currentStep,
                  onSuccess: _onSuccess,
                  onFailure: _onFailure,
                );
              },
            );
          }),
    );
  }

  void _onFailure(String message) {
    context.showErrorSnackBar(message: message);
  }

  void _onSuccess(String message) {
    context.showSnackBar(message: message);
    // FIXME step int is temporary solution , need to figure out proper flow identification
    if (widget.currentStep == 4) {
      Navigator.of(context).pushNamedAndRemoveUntil(
          RouteName.deviceListScreen, (Route<dynamic> route) => false);
      // on boarding device list flow
    } else {
      // Go to home
      Navigator.pushReplacementNamed(context, RouteName.dashBoardScreen);
    }
  }
}
