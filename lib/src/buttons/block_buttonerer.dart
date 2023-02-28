import 'package:flutter/material.dart';

enum ButtonType { primary, secondary, tertiary, transparent, danger }

enum IconPosition { none, leading, trailing }

enum ButtonState {
  enabled,
  hover,
  focused,
  pressed,
  loading,
  disabled,
  skeleton
}

class MicansBlockButton extends StatelessWidget {
  final ButtonType buttonType;
  final IconPosition iconPosition;
  final ButtonState buttonState;
  final String text;
  final IconData? icon;
  final Function()? onPressed;

  // buid primary enabled button constructor
  const MicansBlockButton.primaryEnabled({
    super.key,
    required this.iconPosition,
    required this.text,
    this.icon,
    this.onPressed,
  })  : buttonType = ButtonType.primary,
        buttonState = ButtonState.enabled;

  // buid primary disabled button constructor
  const MicansBlockButton.primaryDisabled({
    super.key,
    required this.iconPosition,
    required this.text,
    this.icon,
    this.onPressed,
  })  : buttonType = ButtonType.primary,
        buttonState = ButtonState.disabled;

  // build primary loading button constructor
  const MicansBlockButton.primaryLoading({
    super.key,
    required this.iconPosition,
    required this.text,
    this.icon,
    this.onPressed,
  })  : buttonType = ButtonType.primary,
        buttonState = ButtonState.loading;

  @override
  Widget build(BuildContext context) {
    return ElevatedButtonTheme(
      data: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
            buttonType == ButtonType.primary
                ? Colors.blue
                : buttonType == ButtonType.secondary
                    ? Colors.red
                    : buttonType == ButtonType.tertiary
                        ? Colors.green
                        : buttonType == ButtonType.transparent
                            ? Colors.yellow
                            : buttonType == ButtonType.danger
                                ? Colors.purple
                                : Colors.black,
          ),
          foregroundColor: MaterialStateProperty.all<Color>(
            buttonType == ButtonType.primary
                ? Colors.white
                : buttonType == ButtonType.secondary
                    ? Colors.white
                    : buttonType == ButtonType.tertiary
                        ? Colors.white
                        : buttonType == ButtonType.transparent
                            ? Colors.white
                            : buttonType == ButtonType.danger
                                ? Colors.white
                                : Colors.black,
          ),
          overlayColor: MaterialStateProperty.all<Color>(
            buttonType == ButtonType.primary
                ? Colors.blue
                : buttonType == ButtonType.secondary
                    ? Colors.red
                    : buttonType == ButtonType.tertiary
                        ? Colors.green
                        : buttonType == ButtonType.transparent
                            ? Colors.yellow
                            : buttonType == ButtonType.danger
                                ? Colors.purple
                                : Colors.black,
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
        ),
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (iconPosition == IconPosition.leading) ...[
              Icon(icon),
              const SizedBox(width: 8),
            ],
            Text(text),
            if (iconPosition == IconPosition.trailing) ...[
              const SizedBox(width: 8),
              Icon(icon),
            ],
          ],
        ),
      ),
    );
  }
}
