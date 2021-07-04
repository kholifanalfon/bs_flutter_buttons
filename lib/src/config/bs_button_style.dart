import 'package:bs_flutter_utils/bs_flutter_utils.dart';
import 'package:flutter/material.dart';

/// Class for custom [BsButton]
class BsButtonStyle {

  final Color? _disabledBackgroundColor;

  final Color? _disabledColor;

  final Color? _disabledBorderColor;

  final Color? _hoverColor;

  final Color? _focusBackgroundColor;

  final Color? _focusColor;

  // Constructor BsButtonStyle
  const BsButtonStyle({
    required this.color,
    required this.backgroundColor,
    this.borderColor = Colors.transparent,
    this.borderRadius = BorderRadius.zero,
    Color? hoverColor,
    this.hoverBackgroundColor,
    Color? disabledBackgroundColor,
    Color? disabledColor,
    Color? disabledBorderColor,
    Color? focusBackgroundColor,
    Color? focusColor,
  }) : _disabledBackgroundColor = disabledBackgroundColor,
    _disabledColor = disabledColor,
    _disabledBorderColor = disabledBorderColor,
    _hoverColor = hoverColor,
    _focusBackgroundColor = focusBackgroundColor,
    _focusColor = focusColor;

  /// define color of [BsButton]
  final Color  color;

  /// define borderColor of [BsButton]
  final Color borderColor;

  /// define borderRadius of [BsButton]
  final BorderRadiusGeometry borderRadius;

  /// define backgroundColor of [BsButton]
  final Color backgroundColor;

  final Color? hoverBackgroundColor;

  Color get disabledBackgroundColor {
    if(_disabledBackgroundColor == null)
      return backgroundColor.withOpacity(0.5);

    return _disabledBorderColor!;
  }

  Color get disabledColor {
    if(_disabledColor == null)
      return color.withOpacity(0.5);

    return _disabledColor!;
  }

  Color get disabledBorderColor {
    if(_disabledBorderColor == null)
      return borderColor.withOpacity(0.5);

    return _disabledBorderColor!;
  }

  Color get hoverColor {
    if(_hoverColor == null)
      return color;

    return _hoverColor!;
  }

  Color get focusColor {
    if(_focusColor == null)
      return color;

    return _focusColor!;
  }

  Color get focusBackgroundColor {
    if(_focusBackgroundColor == null)
      return backgroundColor;

    return _focusBackgroundColor!;
  }

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
      focusColor: Colors.white,
      focusBackgroundColor: BsColor.primary,
      borderRadius: BorderRadius.all(Radius.circular(3.0)));

  /// define style outlineSecondary button
  static const BsButtonStyle outlineSecondary = BsButtonStyle(
      color: BsColor.secondary,
      borderColor: BsColor.secondary,
      backgroundColor: Colors.white,
      hoverColor: Colors.white,
      hoverBackgroundColor: BsColor.secondary,
      focusColor: Colors.white,
      focusBackgroundColor: BsColor.secondary,
      borderRadius: BorderRadius.all(Radius.circular(3.0)));

  /// define style outlineSuccess button
  static const BsButtonStyle outlineSuccess = BsButtonStyle(
      color: BsColor.success,
      borderColor: BsColor.success,
      backgroundColor: Colors.white,
      hoverColor: Colors.white,
      hoverBackgroundColor: BsColor.success,
      focusColor: Colors.white,
      focusBackgroundColor: BsColor.success,
      borderRadius: BorderRadius.all(Radius.circular(3.0)));

  /// define style outlineDanger button
  static const BsButtonStyle outlineDanger = BsButtonStyle(
      color: BsColor.danger,
      borderColor: BsColor.danger,
      backgroundColor: Colors.white,
      hoverColor: Colors.white,
      hoverBackgroundColor: BsColor.danger,
      focusColor: Colors.white,
      focusBackgroundColor: BsColor.danger,
      borderRadius: BorderRadius.all(Radius.circular(3.0)));

  /// define style outlineWarning button
  static const BsButtonStyle outlineWarning = BsButtonStyle(
      color: BsColor.warning,
      borderColor: BsColor.warning,
      backgroundColor: Colors.white,
      hoverColor: Colors.white,
      hoverBackgroundColor: BsColor.warning,
      focusColor: Colors.white,
      focusBackgroundColor: BsColor.warning,
      borderRadius: BorderRadius.all(Radius.circular(3.0)));

  /// define style outlineInfo
  static const BsButtonStyle outlineInfo = BsButtonStyle(
      color: BsColor.info,
      borderColor: BsColor.info,
      backgroundColor: Colors.white,
      hoverColor: Colors.white,
      hoverBackgroundColor: BsColor.info,
      focusColor: Colors.white,
      focusBackgroundColor: BsColor.info,
      borderRadius: BorderRadius.all(Radius.circular(3.0)));

  /// define style outlineLight
  static const BsButtonStyle outlineLight = BsButtonStyle(
      color: BsColor.light,
      borderColor: BsColor.light,
      backgroundColor: Colors.white,
      hoverColor: Colors.white,
      hoverBackgroundColor: BsColor.light,
      focusColor: Colors.white,
      focusBackgroundColor: BsColor.light,
      borderRadius: BorderRadius.all(Radius.circular(3.0)));

  /// define style outlineDark
  static const BsButtonStyle outlineDark = BsButtonStyle(
      color: BsColor.dark,
      borderColor: BsColor.dark,
      backgroundColor: Colors.white,
      hoverColor: Colors.white,
      hoverBackgroundColor: BsColor.dark,
      focusColor: Colors.white,
      focusBackgroundColor: BsColor.dark,
      borderRadius: BorderRadius.all(Radius.circular(3.0)));
}