import 'package:flutter/material.dart';
import 'package:micans/src/buttons/shared.dart';
import 'package:micans/src/shared/constants.dart';

enum ButtonType {
  primary,
  secondary,
  tertiary,
  icon,
  transparent,
  danger,
  disabled,
  skeleton
}

class Button extends StatefulWidget {
  final ButtonType buttonType;
  final ButtonHeightSize buttonHeightSize;
  final ButtonState buttonState;
  final ButtonBorderRadius<double>? buttonBorderRadius;
  final IconPosition iconPosition;
  final IconData? icon;
  final String text;
  final Function()? onPressed;

  // button.lg constructor
  const Button.lg({
    Key? key,
    required this.buttonType,
    required this.buttonState,
    this.buttonBorderRadius,
    this.iconPosition = IconPosition.none,
    this.icon,
    required this.text,
    this.onPressed,
  })  : buttonHeightSize = ButtonHeightSize.lg,
        super(key: key);

  // button.md constructor
  const Button.md({
    Key? key,
    required this.buttonType,
    required this.buttonState,
    this.buttonBorderRadius,
    this.iconPosition = IconPosition.none,
    this.icon,
    required this.text,
    this.onPressed,
  })  : buttonHeightSize = ButtonHeightSize.md,
        super(key: key);

  // button.sm constructor
  const Button.sm({
    Key? key,
    required this.buttonType,
    required this.buttonState,
    this.buttonBorderRadius,
    this.iconPosition = IconPosition.none,
    this.icon,
    required this.text,
    this.onPressed,
  })  : buttonHeightSize = ButtonHeightSize.sm,
        super(key: key);

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    switch (widget.buttonHeightSize) {
      case ButtonHeightSize.sm:
        return _switcherWidget(widget.buttonType, widget.buttonState);
      case ButtonHeightSize.md:
        return const Placeholder();
      case ButtonHeightSize.lg:
        return const Placeholder();
    }
  }
}

Widget _switcherWidget(ButtonType buttonType, ButtonState buttonState) {
  // Map of all button types
  final Map<ButtonType, Map<ButtonState, Widget Function()>> buttonMap = {
    ButtonType.primary: {
      ButtonState.enabled: _enabledButtonBuilder,
      ButtonState.loading: _loadingButtonBuilder,
    },
    ButtonType.secondary: {
      ButtonState.enabled: _enabledButtonBuilder,
      ButtonState.loading: _loadingButtonBuilder,
    },
    ButtonType.tertiary: {
      ButtonState.enabled: _enabledButtonBuilder,
      ButtonState.loading: _loadingButtonBuilder,
    },
    ButtonType.icon: {
      ButtonState.enabled: _enabledButtonBuilder,
      ButtonState.loading: _loadingButtonBuilder,
    },
    ButtonType.transparent: {
      ButtonState.enabled: _enabledButtonBuilder,
      ButtonState.loading: _loadingButtonBuilder,
    },
    ButtonType.danger: {
      ButtonState.enabled: _enabledButtonBuilder,
      ButtonState.loading: _loadingButtonBuilder,
    },
    ButtonType.disabled: {
      ButtonState.enabled: _enabledButtonBuilder,
      ButtonState.loading: _loadingButtonBuilder,
    },
    ButtonType.skeleton: {
      ButtonState.enabled: _enabledButtonBuilder,
      ButtonState.loading: _loadingButtonBuilder,
    },
  };

  return buttonMap[buttonType]![buttonState]!();
}

// Mother of all button blocks
Widget _buttonBuilder({
  required Button widget,
  required Color backgroundColor,
  required Color foregroundColor,
  required Color overlayColor,
  Color? borderSideColor,
  double? borderSideWidth,
  ButtonBorderRadius? buttonBorderRadius,
  required double fixedSize,
  double elevation = 1.00,
}) =>
    ElevatedButton(
      onPressed: widget.onPressed,
      style: ButtonStyle(
        elevation: MaterialStateProperty.all<double>(elevation),
        fixedSize:
            MaterialStateProperty.all<Size>(Size(double.maxFinite, fixedSize)),
        backgroundColor: MaterialStateProperty.all<Color>(backgroundColor),
        foregroundColor: MaterialStateProperty.all<Color>(foregroundColor),
        side: MaterialStateProperty.all<BorderSide>(
          BorderSide(
            color: borderSideColor ?? Colors.transparent,
            width: borderSideWidth ?? 0,
          ),
        ),
        overlayColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.pressed)) {
              return overlayColor;
            }
            return overlayColor;
          },
        ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(buttonBorderRadius!.value),
          ),
        ),
        padding: MaterialStateProperty.all<EdgeInsets>(
          const EdgeInsets.symmetric(
            horizontal: size16,
            vertical: size12,
          ),
        ),
      ),
      child: widget.buttonState == ButtonState.enabled
          ? _buttonContent(widget)
          : widget.buttonState == ButtonState.loading
              ? _loadingContent(widget, foregroundColor)
              : _buttonContent(widget),
    );

// Button content
_buttonContent(Button widget) {
  switch (widget.iconPosition) {
    case IconPosition.leading:
      return Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          if (widget.icon != null) Icon(widget.icon, size: size24),
          const SizedBox(width: size4),
          _textButtonContent(widget),
        ],
      );
    case IconPosition.trailing:
      return Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          _textButtonContent(widget),
          const SizedBox(width: size4),
          if (widget.icon != null) Icon(widget.icon, size: size24),
        ],
      );
    case IconPosition.none:
      return _textButtonContent(widget);
  }
}

// Loading content
_loadingContent(Button widget, Color iconCustomColor) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      SizedBox(
        height: size24,
        width: size24,
        child: CircularProgressIndicator(
          strokeWidth: 2,
          color: iconCustomColor,
        ),
      ),
      const SizedBox(width: size4),
      _textButtonContent(widget),
    ],
  );
}

//  Utils functions
_textButtonContent(Button widget) {
  return Text(
    widget.text,
    style: const TextStyle(
      fontSize: size16,
      fontWeight: FontWeight.w500,
      height: 1,
    ),
  );
}

Widget _enabledButtonBuilder() {
  return const Placeholder();
}

Widget _loadingButtonBuilder() {
  return const Placeholder();
}
