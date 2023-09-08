import 'package:dcbase/dcbase.dart';
import 'package:dcbase/src/constants/screen_state.dart';
import 'package:flutter/material.dart';

class ProgressAwareView extends StatelessWidget {
  final ValueNotifier<ScreenState> screenState;

  final Widget child;

  const ProgressAwareView({
    Key? key,
    required this.screenState,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: screenState,
      builder: (context, state, child) {
        logD("Progress aware view $state");
        if (state == ScreenState.apiProgress) {
          return const Center(child: CircularProgressIndicator(strokeWidth: 2));
        }
        return child!;
      },
      child: child,
    );
  }
}
