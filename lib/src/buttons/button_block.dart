import 'package:flutter/material.dart';
import 'package:micans/micans.dart';

enum ButtonType {
  primary,
  secondary,
  tertiary,
  transparent,
  danger,
  skeleton,
  disabled
}

enum IconPosition { none, leading, trailing }

enum ButtonState { enabled, loading }

class ButtonBlock extends StatefulWidget {
  final String text;
  final ButtonType buttonType;
  final ButtonState? buttonState;
  final IconPosition iconPosition;
  final IconData? icon;
  final Function()? onPressed;

  // ButtonBlock.primaryEnabled
  const ButtonBlock.primaryEnabled({
    super.key,
    required this.text,
    required this.iconPosition,
    this.icon,
    this.onPressed,
  })  : buttonType = ButtonType.primary,
        buttonState = ButtonState.enabled;

  // ButtonBlock.primaryLoading
  const ButtonBlock.primaryLoading({
    super.key,
    required this.text,
    this.onPressed,
  })  : buttonType = ButtonType.primary,
        buttonState = ButtonState.loading,
        icon = null,
        iconPosition = IconPosition.none;

  // ButtonBlock.secondaryEnabled
  const ButtonBlock.secondaryEnabled({
    super.key,
    required this.text,
    required this.iconPosition,
    this.icon,
    this.onPressed,
  })  : buttonType = ButtonType.secondary,
        buttonState = ButtonState.enabled;

  // ButtonBlock.secondaryLoading
  const ButtonBlock.secondaryLoading({
    super.key,
    required this.text,
    this.onPressed,
  })  : buttonType = ButtonType.secondary,
        buttonState = ButtonState.loading,
        icon = null,
        iconPosition = IconPosition.none;

  // ButtonBlock.tertiaryEnabled
  const ButtonBlock.tertiaryEnabled({
    super.key,
    required this.text,
    required this.iconPosition,
    this.icon,
    this.onPressed,
  })  : buttonType = ButtonType.tertiary,
        buttonState = ButtonState.enabled;

  // ButtonBlock.tertiaryLoading
  const ButtonBlock.tertiaryLoading({
    super.key,
    required this.text,
    this.onPressed,
  })  : buttonType = ButtonType.tertiary,
        buttonState = ButtonState.loading,
        icon = null,
        iconPosition = IconPosition.none;

  // ButtonBlock.transparentEnabled
  const ButtonBlock.transparentEnabled({
    super.key,
    required this.text,
    required this.iconPosition,
    this.icon,
    this.onPressed,
  })  : buttonType = ButtonType.transparent,
        buttonState = ButtonState.enabled;

  // ButtonBlock.transparentLoading
  const ButtonBlock.transparentLoading({
    super.key,
    required this.text,
    this.onPressed,
  })  : buttonType = ButtonType.transparent,
        buttonState = ButtonState.loading,
        icon = null,
        iconPosition = IconPosition.none;

  // ButtonBlock.dangerEnabled
  const ButtonBlock.dangerEnabled({
    super.key,
    required this.text,
    required this.iconPosition,
    this.icon,
    this.onPressed,
  })  : buttonType = ButtonType.danger,
        buttonState = ButtonState.enabled;

  // ButtonBlock.dangerLoading
  const ButtonBlock.dangerLoading({
    super.key,
    required this.text,
    this.onPressed,
  })  : buttonType = ButtonType.danger,
        buttonState = ButtonState.loading,
        icon = null,
        iconPosition = IconPosition.none;

  // ButtonBlock.skeleton
  const ButtonBlock.skeleton(
      {super.key,
      required this.text,
      required this.iconPosition,
      this.icon,
      this.onPressed,
      this.buttonState})
      : buttonType = ButtonType.skeleton;

  // ButtonBlock.Disabled
  const ButtonBlock.disabled(
      {super.key,
      required this.text,
      required this.iconPosition,
      this.icon,
      this.onPressed,
      this.buttonState})
      : buttonType = ButtonType.disabled;

  @override
  State<ButtonBlock> createState() => _ButtonBlockState();
}

class _ButtonBlockState extends State<ButtonBlock> {
  @override
  Widget build(BuildContext context) {
    switch (widget.buttonType) {
      case ButtonType.primary:
        switch (widget.buttonState) {
          case ButtonState.enabled:
            return _defaultButtonBlockEnabled(
              widget: widget,
              backgroundColor: MicansColors.primary_60,
              foregroundColor: MicansColors.grey_10,
              overlayColor: MicansColors.primary_80,
              borderSideColor: null,
              borderSideWidth: null,
              borderRadius: size48,
              fixedSize: size48,
            );
          case ButtonState.loading:
            return _defaultButtonBlockEnabled(
              widget: widget,
              backgroundColor: MicansColors.primary_20,
              foregroundColor: MicansColors.grey_70,
              overlayColor: MicansColors.primary_30,
              borderSideColor: null,
              borderSideWidth: null,
              borderRadius: size48,
              fixedSize: size48,
            );
          default:
            return _defaultButtonBlockEnabled(
              widget: widget,
              backgroundColor: MicansColors.primary_60,
              foregroundColor: MicansColors.grey_10,
              overlayColor: MicansColors.primary_80,
              borderSideColor: null,
              borderSideWidth: null,
              borderRadius: size48,
              fixedSize: size48,
            );
        }
      case ButtonType.secondary:
        switch (widget.buttonState) {
          case ButtonState.enabled:
            return _defaultButtonBlockEnabled(
              widget: widget,
              backgroundColor: MicansColors.grey_20,
              foregroundColor: MicansColors.grey_100,
              overlayColor: MicansColors.primary_40,
              borderSideColor: null,
              borderSideWidth: null,
              borderRadius: size48,
              fixedSize: size48,
            );
          case ButtonState.loading:
            return _defaultButtonBlockEnabled(
              widget: widget,
              backgroundColor: MicansColors.grey_20,
              foregroundColor: MicansColors.grey_60,
              overlayColor: MicansColors.grey_60,
              borderSideColor: null,
              borderSideWidth: null,
              borderRadius: size48,
              fixedSize: size48,
            );
          default:
            return _defaultButtonBlockEnabled(
              widget: widget,
              backgroundColor: MicansColors.grey_20,
              foregroundColor: MicansColors.grey_100,
              overlayColor: MicansColors.primary_40,
              borderSideColor: null,
              borderSideWidth: null,
              borderRadius: size48,
              fixedSize: size48,
            );
        }
      case ButtonType.tertiary:
        switch (widget.buttonState) {
          case ButtonState.enabled:
            return _defaultButtonBlockEnabled(
              widget: widget,
              backgroundColor: MicansColors.white,
              foregroundColor: MicansColors.primary_70,
              overlayColor: MicansColors.grey_30,
              borderSideColor: MicansColors.primary_70,
              borderSideWidth: 1.00,
              borderRadius: size48,
              fixedSize: size48,
            );
          case ButtonState.loading:
            return _defaultButtonBlockEnabled(
              widget: widget,
              backgroundColor: MicansColors.white,
              foregroundColor: MicansColors.primary_70,
              overlayColor: MicansColors.grey_30,
              borderSideColor: MicansColors.primary_60,
              borderSideWidth: 1.00,
              borderRadius: size48,
              fixedSize: size48,
            );
          default:
            return _defaultButtonBlockEnabled(
              widget: widget,
              backgroundColor: MicansColors.white,
              foregroundColor: MicansColors.primary_70,
              overlayColor: MicansColors.grey_30,
              borderSideColor: MicansColors.primary_70,
              borderSideWidth: 1.00,
              borderRadius: size48,
              fixedSize: size48,
            );
        }
      case ButtonType.transparent:
        switch (widget.buttonState) {
          case ButtonState.enabled:
            return _defaultButtonBlockEnabled(
              widget: widget,
              backgroundColor: MicansColors.white,
              foregroundColor: MicansColors.primary_70,
              overlayColor: MicansColors.grey_30,
              borderSideColor: null,
              borderSideWidth: null,
              borderRadius: size48,
              fixedSize: size48,
              elevation: 0,
            );
          case ButtonState.loading:
            return _defaultButtonBlockEnabled(
              widget: widget,
              backgroundColor: MicansColors.white,
              foregroundColor: MicansColors.primary_60,
              overlayColor: MicansColors.grey_30,
              borderSideColor: null,
              borderSideWidth: null,
              borderRadius: size48,
              fixedSize: size48,
              elevation: 0,
            );
          default:
            return _defaultButtonBlockEnabled(
              widget: widget,
              backgroundColor: MicansColors.white,
              foregroundColor: MicansColors.primary_70,
              overlayColor: MicansColors.grey_30,
              borderSideColor: null,
              borderSideWidth: null,
              borderRadius: size48,
              fixedSize: size48,
            );
        }
      case ButtonType.danger:
        switch (widget.buttonState) {
          case ButtonState.enabled:
            return _defaultButtonBlockEnabled(
              widget: widget,
              backgroundColor: MicansColors.red_50,
              foregroundColor: MicansColors.white,
              overlayColor: MicansColors.red_70,
              borderSideColor: null,
              borderSideWidth: null,
              borderRadius: size48,
              fixedSize: size48,
            );
          case ButtonState.loading:
            return _defaultButtonBlockEnabled(
              widget: widget,
              backgroundColor: MicansColors.red_70,
              foregroundColor: MicansColors.white,
              overlayColor: MicansColors.red_70,
              borderSideColor: null,
              borderSideWidth: null,
              borderRadius: size48,
              fixedSize: size48,
            );
          default:
            return _defaultButtonBlockEnabled(
              widget: widget,
              backgroundColor: MicansColors.red_50,
              foregroundColor: MicansColors.white,
              overlayColor: MicansColors.red_70,
              borderSideColor: null,
              borderSideWidth: null,
              borderRadius: size48,
              fixedSize: size48,
              elevation: 0,
            );
        }
      case ButtonType.disabled:
        return _defaultButtonBlockEnabled(
          widget: widget,
          backgroundColor: MicansColors.grey_30,
          foregroundColor: MicansColors.grey_50,
          overlayColor: MicansColors.grey_30,
          borderSideColor: null,
          borderSideWidth: null,
          borderRadius: size48,
          fixedSize: size48,
        );
      case ButtonType.skeleton:
        return _defaultButtonBlockEnabled(
          widget: widget,
          backgroundColor: MicansColors.grey_30,
          foregroundColor: MicansColors.grey_50,
          overlayColor: MicansColors.grey_40,
          borderSideColor: null,
          borderSideWidth: null,
          borderRadius: size48,
          fixedSize: size48,
        );
    }
  }
}

// Primary Button Block Enabled (MicansColors.primary_60, grey_10, primary_80, 48,48 )
Widget _defaultButtonBlockEnabled({
  required ButtonBlock widget,
  required Color backgroundColor,
  required Color foregroundColor,
  required Color overlayColor,
  Color? borderSideColor,
  double? borderSideWidth,
  required double borderRadius,
  required double fixedSize,
  double elevation = 1.00,
}) =>
    ElevatedButton(
      onPressed: widget.onPressed,
      style: ButtonStyle(
        elevation: MaterialStateProperty.all<double>(elevation),
        backgroundColor: MaterialStateProperty.all<Color>(
          // check if button is enabled or loading
          widget.buttonState == ButtonState.enabled
              ? backgroundColor
              : widget.buttonState == ButtonState.loading
                  ? backgroundColor
                  : backgroundColor,
        ),
        foregroundColor: MaterialStateProperty.all<Color>(
          widget.buttonState == ButtonState.enabled
              ? foregroundColor
              : widget.buttonState == ButtonState.loading
                  ? foregroundColor
                  : foregroundColor,
        ),
        side: MaterialStateProperty.all<BorderSide>(
          BorderSide(
            color: widget.buttonState == ButtonState.enabled
                ? borderSideColor ?? Colors.transparent
                : borderSideColor ?? Colors.transparent,
            width: widget.buttonState == ButtonState.enabled
                ? borderSideWidth ?? 0
                : borderSideWidth ?? 0,
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
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
          const EdgeInsets.symmetric(
            vertical: size12,
            horizontal: size16,
          ),
        ),
      ),
      child: widget.buttonState == ButtonState.enabled
          ? _buttonContent(widget)
          : widget.buttonState == ButtonState.loading
              ? _loadingContent(widget, null)
              : _buttonContent(widget),
    );

// Button content
_buttonContent(ButtonBlock widget) {
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
_loadingContent(ButtonBlock widget, Color? iconCustomColor) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const SizedBox(
        height: size24,
        width: size24,
        child: CircularProgressIndicator(
          strokeWidth: 2,
          // color: iconCustomColor,
        ),
      ),
      const SizedBox(width: size4),
      _textButtonContent(widget),
    ],
  );
}

//  Utils functions
_textButtonContent(ButtonBlock widget) {
  return Text(
    widget.text,
    style: const TextStyle(
      fontSize: size16,
      fontWeight: FontWeight.w500,
      height: 1,
    ),
  );
}
