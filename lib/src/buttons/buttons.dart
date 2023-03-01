import 'package:flutter/material.dart';
import 'package:micans/micans.dart';

enum ButtonType { primary, secondary, tertiary, transparent, danger, skeleton }

enum IconPosition { none, leading, trailing }

enum ButtonState {
  enabled,
  // hover,
  // focused,
  // pressed,
  loading,
  disabled,
  skeleton
}

class ButtonBlock extends StatefulWidget {
  final String text;
  final ButtonType buttonType;
  final ButtonState buttonState;
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
        buttonState = ButtonState.enabled,
        assert(iconPosition == IconPosition.none || icon != null);
  // ButtonBlock.primaryDisabled
  const ButtonBlock.primaryDisabled({
    super.key,
    required this.text,
    required this.iconPosition,
    this.icon,
    this.onPressed,
  })  : buttonType = ButtonType.primary,
        buttonState = ButtonState.disabled;
  // ButtonBlock.primaryLoading
  const ButtonBlock.primaryLoading({
    super.key,
    required this.text,
    required this.iconPosition,
    this.icon,
    this.onPressed,
  })  : buttonType = ButtonType.primary,
        buttonState = ButtonState.loading;

  // ButtonBlock.secondaryEnabled
  const ButtonBlock.secondaryEnabled({
    super.key,
    required this.text,
    required this.iconPosition,
    this.icon,
    this.onPressed,
  })  : buttonType = ButtonType.secondary,
        buttonState = ButtonState.enabled;
  // ButtonBlock.secondaryDisabled
  const ButtonBlock.secondaryDisabled({
    super.key,
    required this.text,
    required this.iconPosition,
    this.icon,
    this.onPressed,
  })  : buttonType = ButtonType.secondary,
        buttonState = ButtonState.disabled;
  // ButtonBlock.secondaryLoading
  const ButtonBlock.secondaryLoading({
    super.key,
    required this.text,
    required this.iconPosition,
    this.icon,
    this.onPressed,
  })  : buttonType = ButtonType.secondary,
        buttonState = ButtonState.loading;

  // ButtonBlock.tertiaryEnabled
  const ButtonBlock.tertiaryEnabled({
    super.key,
    required this.text,
    required this.iconPosition,
    this.icon,
    this.onPressed,
  })  : buttonType = ButtonType.tertiary,
        buttonState = ButtonState.enabled;
  // ButtonBlock.tertiaryDisabled
  const ButtonBlock.tertiaryDisabled({
    super.key,
    required this.text,
    required this.iconPosition,
    this.icon,
    this.onPressed,
  })  : buttonType = ButtonType.tertiary,
        buttonState = ButtonState.disabled;
  // ButtonBlock.tertiaryLoading
  const ButtonBlock.tertiaryLoading({
    super.key,
    required this.text,
    required this.iconPosition,
    this.icon,
    this.onPressed,
  })  : buttonType = ButtonType.tertiary,
        buttonState = ButtonState.loading;

  // ButtonBlock.transparentEnabled
  const ButtonBlock.transparentEnabled({
    super.key,
    required this.text,
    required this.iconPosition,
    this.icon,
    this.onPressed,
  })  : buttonType = ButtonType.transparent,
        buttonState = ButtonState.enabled;
  // ButtonBlock.transparentDisabled
  const ButtonBlock.transparentDisabled({
    super.key,
    required this.text,
    required this.iconPosition,
    this.icon,
    this.onPressed,
  })  : buttonType = ButtonType.transparent,
        buttonState = ButtonState.disabled;
  // ButtonBlock.transparentLoading
  const ButtonBlock.transparentLoading({
    super.key,
    required this.text,
    required this.iconPosition,
    this.icon,
    this.onPressed,
  })  : buttonType = ButtonType.transparent,
        buttonState = ButtonState.loading;

  // ButtonBlock.dangerEnabled
  const ButtonBlock.dangerEnabled({
    super.key,
    required this.text,
    required this.iconPosition,
    this.icon,
    this.onPressed,
  })  : buttonType = ButtonType.danger,
        buttonState = ButtonState.enabled;
  // ButtonBlock.dangerDisabled
  const ButtonBlock.dangerDisabled({
    super.key,
    required this.text,
    required this.iconPosition,
    this.icon,
    this.onPressed,
  })  : buttonType = ButtonType.danger,
        buttonState = ButtonState.disabled;
  // ButtonBlock.dangerLoading
  const ButtonBlock.dangerLoading({
    super.key,
    required this.text,
    required this.iconPosition,
    this.icon,
    this.onPressed,
  })  : buttonType = ButtonType.danger,
        buttonState = ButtonState.loading;

  // ButtonBlock.skeleton
  const ButtonBlock.skeleton({
    super.key,
    required this.text,
    required this.iconPosition,
    this.icon,
    this.onPressed,
  })  : buttonType = ButtonType.skeleton,
        buttonState = ButtonState.skeleton;

  @override
  State<ButtonBlock> createState() => _ButtonBlockState();
}

class _ButtonBlockState extends State<ButtonBlock> {
  // based on the called constructor, set the button type
  // and configure the button to be returned
  @override
  Widget build(BuildContext context) {
    switch (widget.buttonType) {
      case ButtonType.primary:
        switch (widget.buttonState) {
          case ButtonState.enabled:
            return _primaryButtonBlockEnabled(widget);
          case ButtonState.disabled:
            return _primaryButtonBlockDisabled(widget);
          case ButtonState.loading:
            return _primaryButtonLoading(widget);
          case ButtonState.skeleton:
            return _primaryButtonBlockSkeleton(widget);
        }
      case ButtonType.secondary:
        // return _secondaryButtonBlock(widget);
        return const Placeholder();
      case ButtonType.tertiary:
        return const Placeholder();
      // return _tertiaryButtonBlock();
      case ButtonType.transparent:
        return const Placeholder();
      // return _transparentButtonBlock();
      case ButtonType.danger:
        return const Placeholder();
      // return _dangerButtonBlock();
      case ButtonType.skeleton:
        return const Placeholder();
      // return _skeletonButtonBlock();
    }
  }
}

// Primary Button Block Enabled
Widget _primaryButtonBlockEnabled(ButtonBlock widget) {
  return ElevatedButton(
    onPressed: widget.onPressed,
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(
        widget.buttonState == ButtonState.enabled
            ? MicansColors.primary_60
            : MicansColors.blue_60,
      ),
      foregroundColor: MaterialStateProperty.all<Color>(
        widget.buttonState == ButtonState.enabled
            ? MicansColors.grey_10
            : MicansColors.grey_10,
      ),
      overlayColor: MaterialStateProperty.resolveWith<Color>(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.pressed)) {
            return MicansColors.primary_80;
          }
          return MicansColors.primary_80;
        },
      ),
      padding: MaterialStateProperty.all<EdgeInsets>(
        const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      ),
      maximumSize: MaterialStateProperty.all<Size>(
        const Size(double.infinity, 48),
      ),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(48),
        ),
      ),
    ),
    child: _buttonContent(widget),
  );
}

// Primary Button Block Disabled
Widget _primaryButtonBlockDisabled(ButtonBlock widget) {
  return ElevatedButton(
    onPressed: null,
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(
        widget.buttonState == ButtonState.enabled
            ? MicansColors.grey_30
            : MicansColors.grey_30,
      ),
      foregroundColor: MaterialStateProperty.all<Color>(
        widget.buttonState == ButtonState.enabled
            ? MicansColors.grey_50
            : MicansColors.grey_50,
      ),
      overlayColor: MaterialStateProperty.resolveWith<Color>(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.pressed)) {
            return MicansColors.grey_20;
          }
          return MicansColors.grey_20;
        },
      ),
      padding: MaterialStateProperty.all<EdgeInsets>(
        const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      ),
      maximumSize: MaterialStateProperty.all<Size>(
        const Size(double.infinity, 48),
      ),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(48),
        ),
      ),
    ),
    child: _buttonContent(widget),
  );
}

// Primary Button Block Loading
Widget _primaryButtonLoading(ButtonBlock widget) {
  return ElevatedButton(
    onPressed: null,
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(
        widget.buttonState == ButtonState.enabled
            ? MicansColors.primary_20
            : MicansColors.primary_20,
      ),
      foregroundColor: MaterialStateProperty.all<Color>(
        widget.buttonState == ButtonState.enabled
            ? MicansColors.primary_70
            : MicansColors.primary_70,
      ),
      overlayColor: MaterialStateProperty.resolveWith<Color>(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.pressed)) {
            return MicansColors.primary_10;
          }
          return MicansColors.primary_10;
        },
      ),
      padding: MaterialStateProperty.all<EdgeInsets>(
        const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      ),
      maximumSize: MaterialStateProperty.all<Size>(
        const Size(double.infinity, 48),
      ),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(48),
        ),
      ),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(
          height: 16,
          width: 16,
          child: CircularProgressIndicator(
            strokeWidth: 2,
            color: MicansColors.grey_10,
          ),
        ),
        const SizedBox(width: 8),
        Text(widget.text),
      ],
    ),
  );
}

// Primary Button Block Skeleton
Widget _primaryButtonBlockSkeleton(ButtonBlock widget) {
  return ElevatedButton(
    onPressed: null,
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(
        widget.buttonState == ButtonState.enabled
            ? MicansColors.grey_20
            : MicansColors.grey_20,
      ),
      foregroundColor: MaterialStateProperty.all<Color>(
        widget.buttonState == ButtonState.enabled
            ? MicansColors.grey_20
            : MicansColors.grey_20,
      ),
      overlayColor: MaterialStateProperty.resolveWith<Color>(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.pressed)) {
            return MicansColors.grey_20;
          }
          return MicansColors.grey_20;
        },
      ),
      padding: MaterialStateProperty.all<EdgeInsets>(
        const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      ),
      maximumSize: MaterialStateProperty.all<Size>(
        const Size(double.infinity, 48),
      ),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(48),
        ),
      ),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Text(''),
      ],
    ),
  );
}

_buttonContent(ButtonBlock widget) {
  switch (widget.iconPosition) {
    case IconPosition.leading:
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (widget.icon != null) Icon(widget.icon),
          Text(widget.text),
        ],
      );
    case IconPosition.trailing:
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(widget.text),
          if (widget.icon != null) Icon(widget.icon),
        ],
      );
    case IconPosition.none:
      return Text(widget.text);
  }
}
