import 'package:bs_flutter_utils/bs_flutter_utils.dart';
import 'package:flutter/material.dart';

class BsDropdownMenuStyle {

  const BsDropdownMenuStyle({
    this.border,
    this.borderRadius = const BorderRadius.all(Radius.circular(5.0)),
    this.boxShadow = const [
      BoxShadow(
        color: Color(0xffd9d9d9),
        spreadRadius: 2.0,
        blurRadius: 5.0
      )
    ],
  });

  final Border? border;

  final BorderRadiusGeometry borderRadius;

  final List<BoxShadow> boxShadow;
}