import 'package:flutter/material.dart';

extension ContextExtensions on BuildContext {
  void showSnackBar({
    required String message,
    SnackBarAction? action,
    SnackBarBehavior? behavior,
  }) {
    ScaffoldMessenger.of(this).clearSnackBars();
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        key: ValueKey(message),
        behavior: behavior ?? SnackBarBehavior.fixed,
        margin: behavior == SnackBarBehavior.fixed
            ? const EdgeInsets.only(left: 16, right: 16, bottom: 16)
            : null,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
        content: Text(message),
        action: action,
      ),
    );
  }

  void showErrorSnackBar({
    required String message,
    SnackBarAction? action,
    SnackBarBehavior? behavior,
  }) {
    ScaffoldMessenger.of(this).clearSnackBars();
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        key: ValueKey(message),
        backgroundColor: Theme.of(this).colorScheme.errorContainer,
        behavior: behavior ?? SnackBarBehavior.fixed,
        margin: behavior == SnackBarBehavior.fixed
            ? const EdgeInsets.only(left: 16, right: 16, bottom: 16)
            : null,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
        content: Text(
          message,
          style: Theme.of(this)
              .textTheme
              .bodyMedium
              ?.copyWith(color: Theme.of(this).colorScheme.onErrorContainer),
        ),
        action: action,
      ),
    );
  }
}

extension TextEditControllerExtension on TextEditingController {
  void setTextAndMoveCursor(String text) {
    this.text = text;
    selection =
        TextSelection.fromPosition(TextPosition(offset: this.text.length));
  }
}
