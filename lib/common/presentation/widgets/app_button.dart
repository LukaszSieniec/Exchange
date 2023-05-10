import 'package:flutter/material.dart';

enum Button {
  elevated,
  outlined,
}

class AppButton extends StatelessWidget {
  final String label;

  /// If the [AppButton] is disabled, the [onPressed] method is null.
  final VoidCallback? onPressed;

  final Button buttonType;

  final double width;
  final double height;

  const AppButton.elevated({
    required this.label,
    this.onPressed,
    this.buttonType = Button.elevated,
    this.width = double.infinity,
    this.height = 52.0,
    super.key,
  });

  const AppButton.outlined({
    required this.label,
    this.onPressed,
    this.buttonType = Button.outlined,
    this.width = double.infinity,
    this.height = 52.0,
    super.key,
  });

  @override
  Widget build(BuildContext context) => SizedBox(
        width: width,
        height: height,
        child: buttonType == Button.elevated
            ? ElevatedButton(
                onPressed: onPressed,
                child: Text(label),
              )
            : OutlinedButton(
                onPressed: onPressed,
                child: Text(label),
              ),
      );
}
