// Creating a button that has a hierarchical of primary, secondary, tertiary, transparent or danger
// also that can include an icon position of none, leading or trailing
// and can have a state of enabled, hover, focused, pressed; loading, disabled, skeleton

import 'package:flutter/material.dart';
import 'package:micans/micans.dart';

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

  // construct a button primary
  const MicansBlockButton.primary({
    Key? key,
    required this.text,
    this.icon,
    required this.iconPosition,
    required this.buttonState,
    this.onPressed,
  })  : buttonType = ButtonType.primary,
        super(key: key);

  // construct a button secondary
  const MicansBlockButton.secondary({
    Key? key,
    required this.text,
    this.icon,
    required this.iconPosition,
    required this.buttonState,
    this.onPressed,
  })  : buttonType = ButtonType.secondary,
        super(key: key);

  // construct a button tertiary
  const MicansBlockButton.tertiary({
    Key? key,
    required this.text,
    this.icon,
    required this.iconPosition,
    required this.buttonState,
    this.onPressed,
  })  : buttonType = ButtonType.tertiary,
        super(key: key);

  // construct a button transparent
  const MicansBlockButton.transparent({
    Key? key,
    required this.text,
    this.icon,
    required this.iconPosition,
    required this.buttonState,
    this.onPressed,
  })  : buttonType = ButtonType.transparent,
        super(key: key);

  // construct a button danger
  const MicansBlockButton.danger({
    Key? key,
    required this.text,
    this.icon,
    required this.iconPosition,
    required this.buttonState,
    this.onPressed,
  })  : buttonType = ButtonType.danger,
        super(key: key);

  @override
  State<StatefulWidget> createState() => _MicansBlockButtonState();
}

class _MicansBlockButtonState extends State<MicansBlockButton> {
  // based on the called constructor, set the button type
  // and configure the button to be returned
  @override
  Widget build(BuildContext context) {
    switch (widget.buttonType) {
      case ButtonType.primary:
        return _getPrimaryButton(widget);
      case ButtonType.secondary:
        return _getSecondaryButton(widget);
      case ButtonType.tertiary:
        return _getTertiaryButton(widget);
      case ButtonType.transparent:
        return _getTransparentButton(widget);
      case ButtonType.danger:
        return _getDangerButton(widget);
    }
  }
}

Widget _getDangerButton(MicansBlockButton widget) {
  return Container(
    width: double.infinity,
    height: 48,
    decoration: BoxDecoration(
      color: const Color(0xFFE50000),
      borderRadius: BorderRadius.circular(4),
    ),
    child: TextButton(
      onPressed: widget.onPressed,
      child: _getButtonContent(
        widget.iconPosition,
        widget.icon,
        widget.text,
      ),
    ),
  );
}

Widget _getTransparentButton(MicansBlockButton widget) {
  return Container(
    width: double.infinity,
    height: 48,
    decoration: BoxDecoration(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(4),
    ),
    child: TextButton(
      onPressed: widget.onPressed,
      child: _getButtonContent(
        widget.iconPosition,
        widget.icon,
        widget.text,
      ),
    ),
  );
}

Widget _getTertiaryButton(MicansBlockButton widget) {
  return Container(
    width: double.infinity,
    height: 48,
    decoration: BoxDecoration(
      color: const Color(0xFF0060E0),
      borderRadius: BorderRadius.circular(4),
    ),
    child: TextButton(
      onPressed: widget.onPressed,
      child: _getButtonContent(
        widget.iconPosition,
        widget.icon,
        widget.text,
      ),
    ),
  );
}

Widget _getSecondaryButton(MicansBlockButton widget) {
  return Container(
    width: double.infinity,
    height: 48,
    decoration: BoxDecoration(
      color: const Color(0xFFE5E5E5),
      borderRadius: BorderRadius.circular(48),
    ),
    child: TextButton(
      onPressed: widget.onPressed,
      child: _getButtonContent(
        widget.iconPosition,
        widget.icon,
        widget.text,
      ),
    ),
  );
}

Widget _getPrimaryButton(MicansBlockButton widget) {
  return ElevatedButton(
    onPressed: widget.onPressed,
    style: ElevatedButton.styleFrom(
      // the fill color of the button
      backgroundColor: MicansColors.primary_60,
      // for text and icons inside the button
      foregroundColor: MicansColors.white,
      fixedSize: const Size.fromHeight(48),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(48),
      ),
    ),
    child: _getButtonContent(
      widget.iconPosition,
      widget.icon,
      widget.text,
    ),
  );
}

_getButtonContent(IconPosition iconPosition, IconData? icon, String text) {
  switch (iconPosition) {
    case IconPosition.none:
      return MicansTypography.labelMD(text);
    case IconPosition.leading:
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon),
          const MicansSpacer.space1(),
          MicansTypography.labelMD(text),
        ],
      );
    case IconPosition.trailing:
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MicansTypography.labelMD(text),
          const MicansSpacer.space1(),
          Icon(icon),
        ],
      );
  }
}





































// _getButtonContent(IconPosition iconPosition, IconData? icon, String text) {
//   switch (iconPosition) {
//     case IconPosition.none:
//       return Text(text);
//     case IconPosition.leading:
//       return Row(
//         children: [
//           Icon(icon),
//           const SizedBox(width: 8),
//           Text(text),
//         ],
//       );
//     case IconPosition.trailing:
//       return Row(
//         children: [
//           Text(text),
//           const SizedBox(width: 8),
//           Icon(icon),
//         ],
//       );
//   }
// }

// Color _getOverlayColor(ButtonType buttonType, ButtonState buttonState) {
//   switch (buttonType) {
//     case ButtonType.primary:
//       switch (buttonState) {
//         case ButtonState.enabled:
//           return const Color(0xFF0060E0);
//         case ButtonState.hover:
//           return const Color(0xFF0050CC);
//         case ButtonState.focused:
//           return const Color(0xFF0040B8);
//         case ButtonState.pressed:
//           return const Color(0xFF0030A5);
//         case ButtonState.loading:
//           return const Color(0xFF002092);
//         case ButtonState.disabled:
//           return const Color(0xFF00107E);
//         case ButtonState.skeleton:
//           return const Color(0xFF00006B);
//       }
//     case ButtonType.secondary:
//       switch (buttonState) {
//         case ButtonState.enabled:
//           return const Color(0xFFD9D9D9);
//         case ButtonState.hover:
//           return const Color(0xFFCCCCCC);
//         case ButtonState.focused:
//           return const Color(0xFFBFBFBF);
//         case ButtonState.pressed:
//           return const Color(0xFFB2B2B2);
//         case ButtonState.loading:
//           return const Color(0xFFA5A5A5);
//         case ButtonState.disabled:
//           return const Color(0xFF999999);
//         case ButtonState.skeleton:
//           return const Color(0xFF8C8C8C);
//       }
//     case ButtonType.tertiary:
//       switch (buttonState) {
//         case ButtonState.enabled:
//           return const Color(0x0D000000);
//         case ButtonState.hover:
//           return const Color(0x1A000000);
//         case ButtonState.focused:
//           return const Color(0x26000000);
//         case ButtonState.pressed:
//           return const Color(0x33000000);
//         case ButtonState.loading:
//           return const Color(0x40000000);
//         case ButtonState.disabled:
//           return const Color(0x4D000000);
//         case ButtonState.skeleton:
//           return const Color(0x5A000000);
//       }
//     case ButtonType.transparent:
//       switch (buttonState) {
//         case ButtonState.enabled:
//           return const Color(0x0D000000);
//         case ButtonState.hover:
//           return const Color(0x1A000000);
//         case ButtonState.focused:
//           return const Color(0x26000000);
//         case ButtonState.pressed:
//           return const Color(0x33000000);
//         case ButtonState.loading:
//           return const Color(0x40000000);
//         case ButtonState.disabled:
//           return const Color(0x4D000000);
//         case ButtonState.skeleton:
//           return const Color(0x5A000000);
//       }
//     case ButtonType.danger:
//       switch (buttonState) {
//         case ButtonState.enabled:
//           return const Color(0xFFD0021B);
//         case ButtonState.hover:
//           return const Color(0xFFC40119);
//         case ButtonState.focused:
//           return const Color(0xFFB80017);
//         case ButtonState.pressed:
//           return const Color(0xFFAB0015);
//         case ButtonState.loading:
//           return const Color(0xFF9E0013);
//         case ButtonState.disabled:
//           return const Color(0xFF910011);
//         case ButtonState.skeleton:
//           return const Color(0xFF84000F);
//       }
//   }
// }

// Color _getBackgroundColor(ButtonType buttonType, ButtonState buttonState) {
//   switch (buttonType) {
//     case ButtonType.primary:
//       switch (buttonState) {
//         case ButtonState.enabled:
//           return const Color(0xFF0070F3);
//         case ButtonState.hover:
//           return const Color(0xFF0060E0);
//         case ButtonState.focused:
//           return const Color(0xFF0050CC);
//         case ButtonState.pressed:
//           return const Color(0xFF0040B8);
//         case ButtonState.loading:
//           return const Color(0xFF0030A5);
//         case ButtonState.disabled:
//           return const Color(0xFF002092);
//         case ButtonState.skeleton:
//           return const Color(0xFF00107E);
//       }
//     case ButtonType.secondary:
//       switch (buttonState) {
//         case ButtonState.enabled:
//           return const Color(0xFFE6E6E6);
//         case ButtonState.hover:
//           return const Color(0xFFD9D9D9);
//         case ButtonState.focused:
//           return const Color(0xFFCCCCCC);
//         case ButtonState.pressed:
//           return const Color(0xFFBFBFBF);
//         case ButtonState.loading:
//           return const Color(0xFFB2B2B2);
//         case ButtonState.disabled:
//           return const Color(0xFFA5A5A5);
//         case ButtonState.skeleton:
//           return const Color(0xFF999999);
//       }
//     case ButtonType.tertiary:
//       switch (buttonState) {
//         case ButtonState.enabled:
//           return const Color(0x00000000);
//         case ButtonState.hover:
//           return const Color(0x0D000000);
//         case ButtonState.focused:
//           return const Color(0x1A000000);
//         case ButtonState.pressed:
//           return const Color(0x26000000);
//         case ButtonState.loading:
//           return const Color(0x33000000);
//         case ButtonState.disabled:
//           return const Color(0x40000000);
//         case ButtonState.skeleton:
//           return const Color(0x4D000000);
//       }
//     case ButtonType.transparent:
//       switch (buttonState) {
//         case ButtonState.enabled:
//           return const Color(0x00000000);
//         case ButtonState.hover:
//           return const Color(0x0D000000);
//         case ButtonState.focused:
//           return const Color(0x1A000000);
//         case ButtonState.pressed:
//           return const Color(0x26000000);
//         case ButtonState.loading:
//           return const Color(0x33000000);
//         case ButtonState.disabled:
//           return const Color(0x40000000);
//         case ButtonState.skeleton:
//           return const Color(0x4D000000);
//       }
//     case ButtonType.danger:
//       switch (buttonState) {
//         case ButtonState.enabled:
//           return const Color(0xFFD0021B);
//         case ButtonState.hover:
//           return const Color(0xFFC00119);
//         case ButtonState.focused:
//           return const Color(0xFFB00017);
//         case ButtonState.pressed:
//           return const Color(0xFFA00015);
//         case ButtonState.loading:
//           return const Color(0xFF900013);
//         case ButtonState.disabled:
//           return const Color(0xFF800011);
//         case ButtonState.skeleton:
//           return const Color(0xFF70000F);
//       }
//   }
// }
