import 'package:micans/src/shared/constants.dart';

enum ButtonHeightSize {
  sm(size32),
  md(size40),
  lg(size48);

  final double value;
  const ButtonHeightSize(this.value);
}

enum ButtonBorderRadius<double> {
  none(0.00),
  sm(size4),
  md(size8),
  lg(size12),
  xl(size16),
  xxl(size24),
  xxxl(size32),
  rounded(size48);

  final double value;
  const ButtonBorderRadius(this.value);
}

enum IconSize {
  none(0.00),
  sm(size16),
  md(size24),
  lg(size32),
  xl(size40),
  xxl(size48);

  final double value;
  const IconSize(this.value);
}

enum IconPosition { none, leading, trailing }

enum ButtonState { enabled, loading }



// switch (widget.buttonType) {
//       case ButtonType.primary:
//         switch (widget.buttonState) {
//           case ButtonState.enabled:
//             return 
//           case ButtonState.loading:
//             return ;
//           default:
//             return _buttonBlockBuilder(
//               widget: widget,
//               backgroundColor: MicansColors.primary_60,
//               foregroundColor: MicansColors.grey_10,
//               overlayColor: MicansColors.primary_80,
//               borderSideColor: null,
//               borderSideWidth: null,
//               buttonBorderRadius:
//                   widget.buttonBorderRadius ?? ButtonBorderRadius.rounded,
//               fixedSize: size48,
//             );
//         }
//       case ButtonType.secondary:
//         switch (widget.buttonState) {
//           case ButtonState.enabled:
//             return _buttonBlockBuilder(
//               widget: widget,
//               backgroundColor: MicansColors.grey_20,
//               foregroundColor: MicansColors.grey_100,
//               overlayColor: MicansColors.primary_40,
//               borderSideColor: null,
//               borderSideWidth: null,
//               buttonBorderRadius:
//                   widget.buttonBorderRadius ?? ButtonBorderRadius.rounded,
//               fixedSize: size48,
//             );
//           case ButtonState.loading:
//             return _buttonBlockBuilder(
//               widget: widget,
//               backgroundColor: MicansColors.grey_20,
//               foregroundColor: MicansColors.grey_60,
//               overlayColor: MicansColors.grey_60,
//               borderSideColor: null,
//               borderSideWidth: null,
//               buttonBorderRadius:
//                   widget.buttonBorderRadius ?? ButtonBorderRadius.rounded,
//               fixedSize: size48,
//             );
//           default:
//             return _buttonBlockBuilder(
//               widget: widget,
//               backgroundColor: MicansColors.grey_20,
//               foregroundColor: MicansColors.grey_100,
//               overlayColor: MicansColors.primary_40,
//               borderSideColor: null,
//               borderSideWidth: null,
//               buttonBorderRadius:
//                   widget.buttonBorderRadius ?? ButtonBorderRadius.rounded,
//               fixedSize: size48,
//             );
//         }
//       case ButtonType.tertiary:
//         switch (widget.buttonState) {
//           case ButtonState.enabled:
//             return _buttonBlockBuilder(
//               widget: widget,
//               backgroundColor: MicansColors.white,
//               foregroundColor: MicansColors.primary_70,
//               overlayColor: MicansColors.grey_30,
//               borderSideColor: MicansColors.primary_70,
//               borderSideWidth: 1.00,
//               buttonBorderRadius:
//                   widget.buttonBorderRadius ?? ButtonBorderRadius.rounded,
//               fixedSize: size48,
//             );
//           case ButtonState.loading:
//             return _buttonBlockBuilder(
//               widget: widget,
//               backgroundColor: MicansColors.white,
//               foregroundColor: MicansColors.primary_70,
//               overlayColor: MicansColors.grey_30,
//               borderSideColor: MicansColors.primary_60,
//               borderSideWidth: 1.00,
//               buttonBorderRadius:
//                   widget.buttonBorderRadius ?? ButtonBorderRadius.rounded,
//               fixedSize: size48,
//             );
//           default:
//             return _buttonBlockBuilder(
//               widget: widget,
//               backgroundColor: MicansColors.white,
//               foregroundColor: MicansColors.primary_70,
//               overlayColor: MicansColors.grey_30,
//               borderSideColor: MicansColors.primary_70,
//               borderSideWidth: 1.00,
//               buttonBorderRadius:
//                   widget.buttonBorderRadius ?? ButtonBorderRadius.rounded,
//               fixedSize: size48,
//             );
//         }
//       case ButtonType.transparent:
//         switch (widget.buttonState) {
//           case ButtonState.enabled:
//             return _buttonBlockBuilder(
//               widget: widget,
//               backgroundColor: MicansColors.white,
//               foregroundColor: MicansColors.primary_70,
//               overlayColor: MicansColors.grey_30,
//               borderSideColor: null,
//               borderSideWidth: null,
//               buttonBorderRadius:
//                   widget.buttonBorderRadius ?? ButtonBorderRadius.rounded,
//               fixedSize: size48,
//               elevation: 0,
//             );
//           case ButtonState.loading:
//             return _buttonBlockBuilder(
//               widget: widget,
//               backgroundColor: MicansColors.white,
//               foregroundColor: MicansColors.primary_60,
//               overlayColor: MicansColors.grey_30,
//               borderSideColor: null,
//               borderSideWidth: null,
//               buttonBorderRadius:
//                   widget.buttonBorderRadius ?? ButtonBorderRadius.rounded,
//               fixedSize: size48,
//               elevation: 0,
//             );
//           default:
//             return _buttonBlockBuilder(
//               widget: widget,
//               backgroundColor: MicansColors.white,
//               foregroundColor: MicansColors.primary_70,
//               overlayColor: MicansColors.grey_30,
//               borderSideColor: null,
//               borderSideWidth: null,
//               buttonBorderRadius:
//                   widget.buttonBorderRadius ?? ButtonBorderRadius.rounded,
//               fixedSize: size48,
//             );
//         }
//       case ButtonType.danger:
//         switch (widget.buttonState) {
//           case ButtonState.enabled:
//             return _buttonBlockBuilder(
//               widget: widget,
//               backgroundColor: MicansColors.red_50,
//               foregroundColor: MicansColors.white,
//               overlayColor: MicansColors.red_70,
//               borderSideColor: null,
//               borderSideWidth: null,
//               buttonBorderRadius:
//                   widget.buttonBorderRadius ?? ButtonBorderRadius.rounded,
//               fixedSize: size48,
//             );
//           case ButtonState.loading:
//             return _buttonBlockBuilder(
//               widget: widget,
//               backgroundColor: MicansColors.red_70,
//               foregroundColor: MicansColors.white,
//               overlayColor: MicansColors.red_70,
//               borderSideColor: null,
//               borderSideWidth: null,
//               buttonBorderRadius:
//                   widget.buttonBorderRadius ?? ButtonBorderRadius.rounded,
//               fixedSize: size48,
//             );
//           default:
//             return _buttonBlockBuilder(
//               widget: widget,
//               backgroundColor: MicansColors.red_50,
//               foregroundColor: MicansColors.white,
//               overlayColor: MicansColors.red_70,
//               borderSideColor: null,
//               borderSideWidth: null,
//               buttonBorderRadius:
//                   widget.buttonBorderRadius ?? ButtonBorderRadius.rounded,
//               fixedSize: size48,
//               elevation: 0,
//             );
//         }
//       case ButtonType.disabled:
//         return _buttonBlockBuilder(
//           widget: widget,
//           backgroundColor: MicansColors.grey_30,
//           foregroundColor: MicansColors.grey_50,
//           overlayColor: MicansColors.grey_30,
//           borderSideColor: null,
//           borderSideWidth: null,
//           buttonBorderRadius:
//               widget.buttonBorderRadius ?? ButtonBorderRadius.rounded,
//           fixedSize: size48,
//         );
//       case ButtonType.skeleton:
//         return _buttonBlockBuilder(
//           widget: widget,
//           backgroundColor: MicansColors.grey_30,
//           foregroundColor: MicansColors.grey_50,
//           overlayColor: MicansColors.grey_40,
//           borderSideColor: null,
//           borderSideWidth: null,
//           buttonBorderRadius:
//               widget.buttonBorderRadius ?? ButtonBorderRadius.rounded,
//           fixedSize: size48,
//         );
//     }