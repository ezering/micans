// Creating a button that has a hierarchical of primary, secondary, tertiary, transparent or danger
// also that can include an icon position of none, leading or trailing
// and can have a state of enabled, hover, focused, pressed; loading, disabled, skeleton

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

class MicansBlockButton extends StatefulWidget {
  final ButtonType buttonType;
  final IconPosition iconPosition;
  final ButtonState buttonState;
  final String text;
  final IconData? icon;
  final Function()? onPressed;

  const MicansBlockButton({
    super.key,
    required this.buttonType,
    required this.iconPosition,
    required this.buttonState,
    required this.text,
    this.icon,
    this.onPressed,
  });

  @override
  State<StatefulWidget> createState() => _MicansBlockButtonState();
}

class _MicansBlockButtonState extends State<MicansBlockButton> {
  get onPressed => null;

  @override
  Widget build(BuildContext context) {
    // Return a button that is adaptable to the type of button
    // the position of the icon
    // and the state of the button
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
          _getBackgroundColor(
            widget.buttonType,
            widget.buttonState,
          ),
        ),
        overlayColor: MaterialStateProperty.all<Color>(
          _getOverlayColor(
            widget.buttonType,
            widget.buttonState,
          ),
        ),
      ),
      onPressed: widget.onPressed,
      child: _getButtonContent(
        widget.iconPosition,
        widget.icon,
        widget.text,
      ),
    );
  }
}

_getButtonContent(IconPosition iconPosition, IconData? icon, String text) {
  switch (iconPosition) {
    case IconPosition.none:
      return Text(text);
    case IconPosition.leading:
      return Row(
        children: [
          Icon(icon),
          const SizedBox(width: 8),
          Text(text),
        ],
      );
    case IconPosition.trailing:
      return Row(
        children: [
          Text(text),
          const SizedBox(width: 8),
          Icon(icon),
        ],
      );
  }
}

Color _getOverlayColor(ButtonType buttonType, ButtonState buttonState) {
  switch (buttonType) {
    case ButtonType.primary:
      switch (buttonState) {
        case ButtonState.enabled:
          return const Color(0xFF0060E0);
        case ButtonState.hover:
          return const Color(0xFF0050CC);
        case ButtonState.focused:
          return const Color(0xFF0040B8);
        case ButtonState.pressed:
          return const Color(0xFF0030A5);
        case ButtonState.loading:
          return const Color(0xFF002092);
        case ButtonState.disabled:
          return const Color(0xFF00107E);
        case ButtonState.skeleton:
          return const Color(0xFF00006B);
      }
    case ButtonType.secondary:
      switch (buttonState) {
        case ButtonState.enabled:
          return const Color(0xFFD9D9D9);
        case ButtonState.hover:
          return const Color(0xFFCCCCCC);
        case ButtonState.focused:
          return const Color(0xFFBFBFBF);
        case ButtonState.pressed:
          return const Color(0xFFB2B2B2);
        case ButtonState.loading:
          return const Color(0xFFA5A5A5);
        case ButtonState.disabled:
          return const Color(0xFF999999);
        case ButtonState.skeleton:
          return const Color(0xFF8C8C8C);
      }
    case ButtonType.tertiary:
      switch (buttonState) {
        case ButtonState.enabled:
          return const Color(0x0D000000);
        case ButtonState.hover:
          return const Color(0x1A000000);
        case ButtonState.focused:
          return const Color(0x26000000);
        case ButtonState.pressed:
          return const Color(0x33000000);
        case ButtonState.loading:
          return const Color(0x40000000);
        case ButtonState.disabled:
          return const Color(0x4D000000);
        case ButtonState.skeleton:
          return const Color(0x5A000000);
      }
    case ButtonType.transparent:
      switch (buttonState) {
        case ButtonState.enabled:
          return const Color(0x0D000000);
        case ButtonState.hover:
          return const Color(0x1A000000);
        case ButtonState.focused:
          return const Color(0x26000000);
        case ButtonState.pressed:
          return const Color(0x33000000);
        case ButtonState.loading:
          return const Color(0x40000000);
        case ButtonState.disabled:
          return const Color(0x4D000000);
        case ButtonState.skeleton:
          return const Color(0x5A000000);
      }
    case ButtonType.danger:
      switch (buttonState) {
        case ButtonState.enabled:
          return const Color(0xFFD0021B);
        case ButtonState.hover:
          return const Color(0xFFC40119);
        case ButtonState.focused:
          return const Color(0xFFB80017);
        case ButtonState.pressed:
          return const Color(0xFFAB0015);
        case ButtonState.loading:
          return const Color(0xFF9E0013);
        case ButtonState.disabled:
          return const Color(0xFF910011);
        case ButtonState.skeleton:
          return const Color(0xFF84000F);
      }
  }
}

Color _getBackgroundColor(ButtonType buttonType, ButtonState buttonState) {
  switch (buttonType) {
    case ButtonType.primary:
      switch (buttonState) {
        case ButtonState.enabled:
          return const Color(0xFF0070F3);
        case ButtonState.hover:
          return const Color(0xFF0060E0);
        case ButtonState.focused:
          return const Color(0xFF0050CC);
        case ButtonState.pressed:
          return const Color(0xFF0040B8);
        case ButtonState.loading:
          return const Color(0xFF0030A5);
        case ButtonState.disabled:
          return const Color(0xFF002092);
        case ButtonState.skeleton:
          return const Color(0xFF00107E);
      }
    case ButtonType.secondary:
      switch (buttonState) {
        case ButtonState.enabled:
          return const Color(0xFFE6E6E6);
        case ButtonState.hover:
          return const Color(0xFFD9D9D9);
        case ButtonState.focused:
          return const Color(0xFFCCCCCC);
        case ButtonState.pressed:
          return const Color(0xFFBFBFBF);
        case ButtonState.loading:
          return const Color(0xFFB2B2B2);
        case ButtonState.disabled:
          return const Color(0xFFA5A5A5);
        case ButtonState.skeleton:
          return const Color(0xFF999999);
      }
    case ButtonType.tertiary:
      switch (buttonState) {
        case ButtonState.enabled:
          return const Color(0x00000000);
        case ButtonState.hover:
          return const Color(0x0D000000);
        case ButtonState.focused:
          return const Color(0x1A000000);
        case ButtonState.pressed:
          return const Color(0x26000000);
        case ButtonState.loading:
          return const Color(0x33000000);
        case ButtonState.disabled:
          return const Color(0x40000000);
        case ButtonState.skeleton:
          return const Color(0x4D000000);
      }
    case ButtonType.transparent:
      switch (buttonState) {
        case ButtonState.enabled:
          return const Color(0x00000000);
        case ButtonState.hover:
          return const Color(0x0D000000);
        case ButtonState.focused:
          return const Color(0x1A000000);
        case ButtonState.pressed:
          return const Color(0x26000000);
        case ButtonState.loading:
          return const Color(0x33000000);
        case ButtonState.disabled:
          return const Color(0x40000000);
        case ButtonState.skeleton:
          return const Color(0x4D000000);
      }
    case ButtonType.danger:
      switch (buttonState) {
        case ButtonState.enabled:
          return const Color(0xFFD0021B);
        case ButtonState.hover:
          return const Color(0xFFC00119);
        case ButtonState.focused:
          return const Color(0xFFB00017);
        case ButtonState.pressed:
          return const Color(0xFFA00015);
        case ButtonState.loading:
          return const Color(0xFF900013);
        case ButtonState.disabled:
          return const Color(0xFF800011);
        case ButtonState.skeleton:
          return const Color(0xFF70000F);
      }
  }
}
