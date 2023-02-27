import 'package:flutter/material.dart';

const double height4 = 4;
const double height8 = 8;
const double height12 = 12;
const double height16 = 16;
const double height24 = 24;
const double height32 = 32;
const double height40 = 40;
const double height48 = 48;
const double height56 = 56;
const double height64 = 64;
const double height72 = 72;
const double height80 = 80;

class MicansSpacer extends StatelessWidget {

  final double height;

  const MicansSpacer.space0_5({super.key}) : height = height4;
  const MicansSpacer.space1({super.key}) : height = height8;
  const MicansSpacer.space1_5({super.key}) : height = height12;
  const MicansSpacer.space2({super.key}) : height = height16;
  const MicansSpacer.space3({super.key}) : height = height24;
  const MicansSpacer.space4({super.key}) : height = height32;
  const MicansSpacer.space5({super.key}) : height = height40;
  const MicansSpacer.space6({super.key}) : height = height48;
  const MicansSpacer.space7({super.key}) : height = height56;
  const MicansSpacer.space8({super.key}) : height = height64;
  const MicansSpacer.space9({super.key}) : height = height72;
  const MicansSpacer.space10({super.key}) : height = height80;

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: height);
  }
}

