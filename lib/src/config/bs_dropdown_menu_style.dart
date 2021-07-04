import 'package:flutter/material.dart';

class BsDropdownMenuStyle {

  const BsDropdownMenuStyle({
    this.border,
    this.backgroundColor = Colors.white,
    this.borderRadius = const BorderRadius.all(Radius.circular(5.0)),
    this.boxShadow = const [
      BoxShadow(
        color: Color(0xffd7d7d7),
        spreadRadius: 2.0,
        blurRadius: 8.0
      )
    ],
  });

  final Border? border;

  final Color backgroundColor;

  final BorderRadiusGeometry borderRadius;

  final List<BoxShadow> boxShadow;
}