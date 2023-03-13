import 'package:flutter/material.dart';
import 'package:micans/src/shared/constants.dart';



// Fix this:: this spacing has a problem with the width set to double.infinity
// Fix this:: Maybe I should check the naming when I need just the height or width
class MicansSpacer extends StatelessWidget {
  final double size;

  const MicansSpacer.space0_5({super.key}) : size = size4;
  const MicansSpacer.space1({super.key}) : size = size8;
  const MicansSpacer.space1_5({super.key}) : size = size12;
  const MicansSpacer.space2({super.key}) : size = size16;
  const MicansSpacer.space3({super.key}) : size = size24;
  const MicansSpacer.space4({super.key}) : size = size32;
  const MicansSpacer.space5({super.key}) : size = size40;
  const MicansSpacer.space6({super.key}) : size = size48;
  const MicansSpacer.space7({super.key}) : size = size56;
  const MicansSpacer.space8({super.key}) : size = size64;
  const MicansSpacer.space9({super.key}) : size = size72;
  const MicansSpacer.space10({super.key}) : size = size80;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size,
      width: double.infinity,
    );
  }
}
