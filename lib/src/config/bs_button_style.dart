import 'package:bs_flutter_utils/bs_flutter_utils.dart';
import 'package:flutter/material.dart';

/// Class for custom [BsButton]
class BsButtonStyle {
  // Constructor BsButtonStyle
  const BsButtonStyle({
    this.color,
    this.borderColor = Colors.transparent,
    this.borderRadius = BorderRadius.zero,
    this.backgroundColor,
    this.hoverColor,
    this.hoverBackgroundColor
  });

  /// define color of [BsButton]
  final Color? color;

  /// define borderColor of [BsButton]
  final Color borderColor;

  /// define borderRadius of [BsButton]
  final BorderRadiusGeometry borderRadius;

  /// define backgroundColor of [BsButton]
  final Color? backgroundColor;

  final Color? hoverBackgroundColor;

  final Color? hoverColor;

  /// define style primary button
  static const BsButtonStyle primary = BsButtonStyle(
      color: Colors.white,
      backgroundColor: BsColor.primary,
      borderRadius: BorderRadius.all(Radius.circular(3.0)));

  /// define style secondary button
  static const BsButtonStyle secondary = BsButtonStyle(
      color: Colors.white,
      backgroundColor: BsColor.secondary,
      borderRadius: BorderRadius.all(Radius.circular(3.0)));

  /// define style danger button
  static const BsButtonStyle danger = BsButtonStyle(
      color: Colors.white,
      backgroundColor: BsColor.danger,
      borderRadius: BorderRadius.all(Radius.circular(3.0)));

  /// define style success button
  static const BsButtonStyle success = BsButtonStyle(
      color: Colors.white,
      backgroundColor: BsColor.success,
      borderRadius: BorderRadius.all(Radius.circular(3.0)));

  /// define style warning button
  static const BsButtonStyle warning = BsButtonStyle(
      color: Colors.white,
      backgroundColor: BsColor.warning,
      borderRadius: BorderRadius.all(Radius.circular(3.0)));

  /// define style info button
  static const BsButtonStyle info = BsButtonStyle(
      color: Colors.white,
      backgroundColor: BsColor.info,
      borderRadius: BorderRadius.all(Radius.circular(3.0)));

  /// define style light button
  static const BsButtonStyle light = BsButtonStyle(
      color: Colors.black,
      backgroundColor: BsColor.light,
      borderRadius: BorderRadius.all(Radius.circular(3.0)));

  /// define style dark button
  static const BsButtonStyle dark = BsButtonStyle(
      color: Colors.white,
      backgroundColor: BsColor.dark,
      borderRadius: BorderRadius.all(Radius.circular(3.0)));

  /// define style outlinePrimary button
  static const BsButtonStyle outlinePrimary = BsButtonStyle(
      color: BsColor.primary,
      borderColor: BsColor.primary,
      backgroundColor: Colors.white,
      hoverColor: Colors.white,
      hoverBackgroundColor: BsColor.primary,
      borderRadius: BorderRadius.all(Radius.circular(3.0)));

  /// define style outlineSecondary button
  static const BsButtonStyle outlineSecondary = BsButtonStyle(
      color: BsColor.secondary,
      borderColor: BsColor.secondary,
      backgroundColor: Colors.white,
      hoverColor: Colors.white,
      hoverBackgroundColor: BsColor.secondary,
      borderRadius: BorderRadius.all(Radius.circular(3.0)));

  /// define style outlineSuccess button
  static const BsButtonStyle outlineSuccess = BsButtonStyle(
      color: BsColor.success,
      borderColor: BsColor.success,
      backgroundColor: Colors.white,
      hoverColor: Colors.white,
      hoverBackgroundColor: BsColor.success,
      borderRadius: BorderRadius.all(Radius.circular(3.0)));

  /// define style outlineDanger button
  static const BsButtonStyle outlineDanger = BsButtonStyle(
      color: BsColor.danger,
      borderColor: BsColor.danger,
      backgroundColor: Colors.white,
      hoverColor: Colors.white,
      hoverBackgroundColor: BsColor.danger,
      borderRadius: BorderRadius.all(Radius.circular(3.0)));

  /// define style outlineWarning button
  static const BsButtonStyle outlineWarning = BsButtonStyle(
      color: BsColor.warning,
      borderColor: BsColor.warning,
      backgroundColor: Colors.white,
      hoverColor: Colors.white,
      hoverBackgroundColor: BsColor.warning,
      borderRadius: BorderRadius.all(Radius.circular(3.0)));

  /// define style outlineInfo
  static const BsButtonStyle outlineInfo = BsButtonStyle(
      color: BsColor.info,
      borderColor: BsColor.info,
      backgroundColor: Colors.white,
      hoverColor: Colors.white,
      hoverBackgroundColor: BsColor.info,
      borderRadius: BorderRadius.all(Radius.circular(3.0)));

  /// define style outlineLight
  static const BsButtonStyle outlineLight = BsButtonStyle(
      color: BsColor.light,
      borderColor: BsColor.light,
      backgroundColor: Colors.white,
      hoverColor: Colors.white,
      hoverBackgroundColor: BsColor.light,
      borderRadius: BorderRadius.all(Radius.circular(3.0)));

  /// define style outlineDark
  static const BsButtonStyle outlineDark = BsButtonStyle(
      color: BsColor.dark,
      borderColor: BsColor.dark,
      backgroundColor: Colors.white,
      hoverColor: Colors.white,
      hoverBackgroundColor: BsColor.dark,
      borderRadius: BorderRadius.all(Radius.circular(3.0)));
}