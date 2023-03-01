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
              widget,
              MicansColors.primary_60,
              MicansColors.grey_10,
              MicansColors.primary_80,
              null,
              null,
              size48,
              size48,
            );
          case ButtonState.loading:
            return _primaryButtonBlockLoading(widget);
          default:
            return _defaultButtonBlockEnabled(
              widget,
              MicansColors.primary_60,
              MicansColors.grey_10,
              MicansColors.primary_80,
              null,
              null,
              size48,
              size48,
            );
        }
      case ButtonType.secondary:
        switch (widget.buttonState) {
          case ButtonState.enabled:
            return _secondaryButtonBlockEnabled(widget);
          case ButtonState.loading:
            return _secondaryButtonBlockLoading(widget);
          default:
            return _secondaryButtonBlockEnabled(widget);
        }
      case ButtonType.tertiary:
        switch (widget.buttonState) {
          case ButtonState.enabled:
            return _tertiaryButtonBlockEnabled(widget);
          case ButtonState.loading:
            return _tertiaryButtonBlockLoading(widget);
          default:
            return _tertiaryButtonBlockEnabled(widget);
        }
      case ButtonType.transparent:
        switch (widget.buttonState) {
          case ButtonState.enabled:
            return _transparentButtonBlockEnabled(widget);
          case ButtonState.loading:
            return _transparentButtonBlockLoading(widget);
          default:
            return _transparentButtonBlockEnabled(widget);
        }
      case ButtonType.danger:
        switch (widget.buttonState) {
          case ButtonState.enabled:
            return _dangerButtonBlockEnabled(widget);
          case ButtonState.loading:
            return _dangerButtonBlockLoading(widget);
          default:
            return _dangerButtonBlockEnabled(widget);
        }
      case ButtonType.disabled:
        return _disabledButtonBlock(widget);
      case ButtonType.skeleton:
        return _skeletonButtonBlock(widget);
    }
  }
}

// Primary Button Block Enabled (MicansColors.primary_60, grey_10, primary_80, 48,48 )
Widget _defaultButtonBlockEnabled(
  ButtonBlock widget,
  Color backgroundColor,
  Color foregroundColor,
  Color overlayColor,
  Color? borderSideColor,
  double? borderSideWidth,
  double borderRadius,
  double fixedsize,
) {
  return ElevatedButton(
    onPressed: widget.onPressed,
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(
        widget.buttonState == ButtonState.enabled
            ? backgroundColor
            : backgroundColor,
      ),
      foregroundColor: MaterialStateProperty.all<Color>(
        widget.buttonState == ButtonState.enabled
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
    child: _buttonContent(widget),
  );
}

Widget _primaryButtonBlockEnabled(
  ButtonBlock widget,
  MicansColors background,
  MicansColors foreground,
  MicansColors overlay,
  double borderRadius,
  double fixedsize,
) {
  return ElevatedButton(
    onPressed: widget.onPressed,
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(
        widget.buttonState == ButtonState.enabled
            ? MicansColors.primary_60
            : MicansColors.primary_60,
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
        const EdgeInsets.symmetric(vertical: size12, horizontal: size16),
      ),
      maximumSize: MaterialStateProperty.all<Size>(
        const Size(double.infinity, size48),
      ),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(size48),
        ),
      ),
    ),
    child: _buttonContent(widget),
  );
}

// Primary Button Block Loading
Widget _primaryButtonBlockLoading(ButtonBlock widget) {
  return ElevatedButton(
    onPressed: null,
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(
        widget.buttonState == ButtonState.loading
            ? MicansColors.primary_20
            : MicansColors.primary_20,
      ),
      foregroundColor: MaterialStateProperty.all<Color>(
        widget.buttonState == ButtonState.loading
            ? MicansColors.primary_70
            : MicansColors.primary_70,
      ),
      overlayColor: MaterialStateProperty.resolveWith<Color>(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.pressed)) {
            return MicansColors.primary_30;
          }
          return MicansColors.grey_30;
        },
      ),
      padding: MaterialStateProperty.all<EdgeInsets>(
        const EdgeInsets.symmetric(vertical: size12, horizontal: size16),
      ),
      fixedSize: MaterialStateProperty.all<Size>(
        const Size(double.infinity, size48),
      ),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(size48),
        ),
      ),
    ),
    child: _loadingContent(widget, MicansColors.primary_70),
  );
}

// Secondary Button Block Enabled
Widget _secondaryButtonBlockEnabled(ButtonBlock widget) {
  return OutlinedButton(
    onPressed: widget.onPressed,
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(
        widget.buttonState == ButtonState.enabled
            ? MicansColors.grey_20
            : MicansColors.grey_20,
      ),
      foregroundColor: MaterialStateProperty.all<Color>(
        widget.buttonState == ButtonState.enabled
            ? MicansColors.grey_100
            : MicansColors.grey_100,
      ),
      overlayColor: MaterialStateProperty.resolveWith<Color>(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.pressed)) {
            return MicansColors.grey_40;
          }
          return MicansColors.grey_40;
        },
      ),
      padding: MaterialStateProperty.all<EdgeInsets>(
        const EdgeInsets.symmetric(vertical: size12, horizontal: size16),
      ),
      fixedSize: MaterialStateProperty.all<Size>(
        const Size(double.infinity, size48),
      ),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(size48),
        ),
      ),
    ),
    child: _buttonContent(widget),
  );
}

// Secondary Button Block Loading
Widget _secondaryButtonBlockLoading(ButtonBlock widget) {
  return OutlinedButton(
    onPressed: null,
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(
        widget.buttonState == ButtonState.loading
            ? MicansColors.grey_20
            : MicansColors.grey_20,
      ),
      foregroundColor: MaterialStateProperty.all<Color>(
        widget.buttonState == ButtonState.loading
            ? MicansColors.grey_60
            : MicansColors.grey_60,
      ),
      overlayColor: MaterialStateProperty.resolveWith<Color>(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.pressed)) {
            return MicansColors.grey_60;
          }
          return MicansColors.grey_60;
        },
      ),
      padding: MaterialStateProperty.all<EdgeInsets>(
        const EdgeInsets.symmetric(vertical: size12, horizontal: size16),
      ),
      fixedSize: MaterialStateProperty.all<Size>(
        const Size(double.infinity, size48),
      ),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(size48),
        ),
      ),
    ),
    child: _loadingContent(widget, MicansColors.grey_60),
  );
}

// Tertiary button block enabled
Widget _tertiaryButtonBlockEnabled(ButtonBlock widget) {
  return OutlinedButton(
    onPressed: widget.onPressed,
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(
        widget.buttonState == ButtonState.enabled
            ? MicansColors.white
            : MicansColors.white,
      ),
      side: MaterialStateProperty.all<BorderSide>(
        BorderSide(
          color: widget.buttonState == ButtonState.enabled
              ? MicansColors.primary_70
              : MicansColors.primary_70,
          width: 1,
        ),
      ),
      foregroundColor: MaterialStateProperty.all<Color>(
        widget.buttonState == ButtonState.enabled
            ? MicansColors.primary_70
            : MicansColors.primary_70,
      ),
      overlayColor: MaterialStateProperty.resolveWith<Color>(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.pressed)) {
            return MicansColors.grey_30;
          }
          return MicansColors.grey_30;
        },
      ),
      padding: MaterialStateProperty.all<EdgeInsets>(
        const EdgeInsets.symmetric(vertical: size12, horizontal: size16),
      ),
      fixedSize: MaterialStateProperty.all<Size>(
        const Size(double.infinity, size48),
      ),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(size48),
        ),
      ),
    ),
    child: _buttonContent(widget),
  );
}

// Tertiary button block loading
Widget _tertiaryButtonBlockLoading(ButtonBlock widget) {
  return OutlinedButton(
    onPressed: null,
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(
        widget.buttonState == ButtonState.loading
            ? MicansColors.white
            : MicansColors.white,
      ),
      side: MaterialStateProperty.all<BorderSide>(
        BorderSide(
          color: widget.buttonState == ButtonState.loading
              ? MicansColors.primary_60
              : MicansColors.primary_60,
          width: 1,
        ),
      ),
      foregroundColor: MaterialStateProperty.all<Color>(
        widget.buttonState == ButtonState.loading
            ? MicansColors.primary_70
            : MicansColors.primary_70,
      ),
      overlayColor: MaterialStateProperty.resolveWith<Color>(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.pressed)) {
            return MicansColors.grey_30;
          }
          return MicansColors.grey_30;
        },
      ),
      padding: MaterialStateProperty.all<EdgeInsets>(
        const EdgeInsets.symmetric(vertical: size12, horizontal: size16),
      ),
      fixedSize: MaterialStateProperty.all<Size>(
        const Size(double.infinity, size48),
      ),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(size48),
        ),
      ),
    ),
    child: _loadingContent(widget, MicansColors.primary_60),
  );
}

// Transparent button block enabled
Widget _transparentButtonBlockEnabled(ButtonBlock widget) {
  return TextButton(
    onPressed: widget.onPressed,
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(
        widget.buttonState == ButtonState.enabled
            ? MicansColors.white
            : MicansColors.white,
      ),
      foregroundColor: MaterialStateProperty.all<Color>(
        widget.buttonState == ButtonState.enabled
            ? MicansColors.primary_70
            : MicansColors.primary_70,
      ),
      overlayColor: MaterialStateProperty.resolveWith<Color>(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.pressed)) {
            return MicansColors.grey_30;
          }
          return MicansColors.grey_30;
        },
      ),
      padding: MaterialStateProperty.all<EdgeInsets>(
        const EdgeInsets.symmetric(vertical: size12, horizontal: size16),
      ),
      fixedSize: MaterialStateProperty.all<Size>(
        const Size(double.infinity, size48),
      ),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(size48),
        ),
      ),
    ),
    child: _buttonContent(widget),
  );
}

// Transparent button block loading
Widget _transparentButtonBlockLoading(ButtonBlock widget) {
  return TextButton(
    onPressed: null,
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(
        widget.buttonState == ButtonState.loading
            ? MicansColors.white
            : MicansColors.white,
      ),
      foregroundColor: MaterialStateProperty.all<Color>(
        widget.buttonState == ButtonState.loading
            ? MicansColors.primary_60
            : MicansColors.primary_60,
      ),
      overlayColor: MaterialStateProperty.resolveWith<Color>(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.pressed)) {
            return MicansColors.grey_30;
          }
          return MicansColors.grey_30;
        },
      ),
      padding: MaterialStateProperty.all<EdgeInsets>(
        const EdgeInsets.symmetric(vertical: size12, horizontal: size16),
      ),
      fixedSize: MaterialStateProperty.all<Size>(
        const Size(double.infinity, size48),
      ),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(size48),
        ),
      ),
    ),
    child: _loadingContent(widget, MicansColors.primary_60),
  );
}

// Danger button block enabled
Widget _dangerButtonBlockEnabled(ButtonBlock widget) {
  return ElevatedButton(
    onPressed: widget.onPressed,
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(
        widget.buttonState == ButtonState.enabled
            ? MicansColors.red_50
            : MicansColors.red_50,
      ),
      foregroundColor: MaterialStateProperty.all<Color>(
        widget.buttonState == ButtonState.enabled
            ? MicansColors.white
            : MicansColors.white,
      ),
      overlayColor: MaterialStateProperty.resolveWith<Color>(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.pressed)) {
            return MicansColors.red_70;
          }
          return MicansColors.red_70;
        },
      ),
      padding: MaterialStateProperty.all<EdgeInsets>(
        const EdgeInsets.symmetric(vertical: size12, horizontal: size16),
      ),
      fixedSize: MaterialStateProperty.all<Size>(
        const Size(double.infinity, size48),
      ),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(size48),
        ),
      ),
    ),
    child: _buttonContent(widget),
  );
}

// Danger button block loading
Widget _dangerButtonBlockLoading(ButtonBlock widget) {
  return ElevatedButton(
    onPressed: null,
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(
        widget.buttonState == ButtonState.loading
            ? MicansColors.red_70
            : MicansColors.red_70,
      ),
      foregroundColor: MaterialStateProperty.all<Color>(
        widget.buttonState == ButtonState.loading
            ? MicansColors.white
            : MicansColors.white,
      ),
      overlayColor: MaterialStateProperty.resolveWith<Color>(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.pressed)) {
            return MicansColors.red_70;
          }
          return MicansColors.red_70;
        },
      ),
      padding: MaterialStateProperty.all<EdgeInsets>(
        const EdgeInsets.symmetric(vertical: size12, horizontal: size16),
      ),
      fixedSize: MaterialStateProperty.all<Size>(
        const Size(double.infinity, size48),
      ),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(size48),
        ),
      ),
    ),
    child: _loadingContent(widget, MicansColors.white),
  );
}

// Disabled button block
Widget _disabledButtonBlock(ButtonBlock widget) {
  return OutlinedButton(
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
            return MicansColors.grey_30;
          }
          return MicansColors.grey_30;
        },
      ),
      padding: MaterialStateProperty.all<EdgeInsets>(
        const EdgeInsets.symmetric(vertical: size12, horizontal: size16),
      ),
      fixedSize: MaterialStateProperty.all<Size>(
        const Size(double.infinity, size48),
      ),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(size48),
        ),
      ),
    ),
    child: _buttonContent(widget),
  );
}

// Skeleton button block
Widget _skeletonButtonBlock(ButtonBlock widget) {
  return OutlinedButton(
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
              return MicansColors.grey_40;
            }
            return MicansColors.grey_40;
          },
        ),
        padding: MaterialStateProperty.all<EdgeInsets>(
          const EdgeInsets.symmetric(vertical: size12, horizontal: size16),
        ),
        fixedSize: MaterialStateProperty.all<Size>(
          const Size(double.infinity, size48),
        ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(size48),
          ),
        ),
      ),
      child: const Text(''));
}

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
_loadingContent(ButtonBlock widget, Color iconCustomColor) {
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
