import 'package:flutter/material.dart';

/// Class for size of [BsBadge]
class BsBadgeSize {
  /// Constructor of [BsBadgeSize]
  const BsBadgeSize({
    this.padding,
    this.margin,
    this.fontSize,
    this.borderRadius,
  });

  /// define fontSize of [BsBadge]
  final double? fontSize;

  /// define padding of [BsBadge]
  final EdgeInsets? padding;

  /// define margin of [BsBadge]
  final EdgeInsets? margin;

  /// define borderRadius of [BsBadge]
  final BorderRadiusGeometry? borderRadius;

  /// define rounded badge
  static const BsBadgeSize rounded = BsBadgeSize(
      margin: EdgeInsets.only(right: 5.0, bottom: 5.0),
      padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 5.0, bottom: 5.0),
      fontSize: 10.0,
      borderRadius: BorderRadius.all(Radius.circular(100.0)));

  /// define small badge
  static const BsBadgeSize small = BsBadgeSize(
      margin: EdgeInsets.only(right: 5.0, bottom: 5.0),
      padding: EdgeInsets.only(left: 3.0, right: 3.0, top: 2.0, bottom: 2.0),
      fontSize: 9.0,
      borderRadius: BorderRadius.all(Radius.circular(50.0)));

  /// define medium badge
  static const BsBadgeSize medium = BsBadgeSize(
      margin: EdgeInsets.only(right: 5.0, bottom: 5.0),
      padding: EdgeInsets.only(left: 5.0, right: 5.0, top: 3.0, bottom: 3.0),
      fontSize: 10.0,
      borderRadius: BorderRadius.all(Radius.circular(50.0)));

  /// define large badge
  static const BsBadgeSize large = BsBadgeSize(
      margin: EdgeInsets.only(right: 5.0, bottom: 5.0),
      padding: EdgeInsets.only(left: 7.0, right: 7.0, top: 5.0, bottom: 5.0),
      fontSize: 14.0,
      borderRadius: BorderRadius.all(Radius.circular(50.0)));
}