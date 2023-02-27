import 'package:flutter/material.dart';
import 'package:micans/src/typography/headings.dart';
import 'package:micans/src/typography/labels.dart';
import 'package:micans/src/typography/paragraphs.dart';

class MicansTypography extends StatelessWidget {
  final String text;
  final TextStyle style;

  const MicansTypography.headingOne(this.text, {super.key})
      : style = headingOneStyle;
  const MicansTypography.headingTwo(this.text, {super.key})
      : style = headingTwoStyle;
  const MicansTypography.headingThree(this.text, {super.key})
      : style = headingThreeStyle;
  const MicansTypography.headingFour(this.text, {super.key})
      : style = headingFourStyle;
  const MicansTypography.headingFive(this.text, {super.key})
      : style = headingFiveStyle;
  const MicansTypography.headingSix(this.text, {super.key})
      : style = headingSixStyle;

  const MicansTypography.paragraphLG(this.text, {super.key})
      : style = paragraphLG;
  const MicansTypography.paragraphMD(this.text, {super.key})
      : style = paragraphMD;
  const MicansTypography.paragraphSM(this.text, {super.key})
      : style = paragraphSM;
  const MicansTypography.paragraphXS(this.text, {super.key})
      : style = paragraphXS;

  const MicansTypography.labelLG(this.text, {super.key}) : style = labelLG;
  const MicansTypography.labelMD(this.text, {super.key}) : style = labelMD;
  const MicansTypography.labelSM(this.text, {super.key}) : style = labelSM;
  const MicansTypography.labelXS(this.text, {super.key}) : style = labelXS;

  @override
  Widget build(BuildContext context) {
    return Text(text, style: style);
  }
}
