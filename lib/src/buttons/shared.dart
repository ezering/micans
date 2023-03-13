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
