import 'package:flutter/material.dart';

class BsDropdownItemStyle {

  const BsDropdownItemStyle({
    this.backgroundColor,
    this.activeBackgroundColor = Colors.blueAccent,
    this.disabledBackgroundColor,
  });

  final Color? backgroundColor;

  final Color activeBackgroundColor;

  final Color? disabledBackgroundColor;
}