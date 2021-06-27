import 'package:bs_flutter_utils/bs_flutter_utils.dart';
import 'package:flutter/material.dart';

/// Class style of [BsBadge]
class BsBadgeStyle {
  /// Constructor [BsBadgeStyle]
  const BsBadgeStyle({
    this.color,
    this.backgroundColor,
  });

  /// define color [BsBadge]
  final Color? color;

  /// define backgroundColor [BsBadge]
  final Color? backgroundColor;

  /// define primary badge
  static const BsBadgeStyle primary = BsBadgeStyle(
    color: Colors.white,
    backgroundColor: BsColor.primary,
  );

  /// define secondary badge
  static const BsBadgeStyle secondary = BsBadgeStyle(
    color: Colors.white,
    backgroundColor: BsColor.secondary,
  );

  /// define danger badge
  static const BsBadgeStyle danger = BsBadgeStyle(
    color: Colors.white,
    backgroundColor: BsColor.danger,
  );

  /// define success badge
  static const BsBadgeStyle success = BsBadgeStyle(
    color: Colors.white,
    backgroundColor: BsColor.success,
  );

  /// define warning badge
  static const BsBadgeStyle warning = BsBadgeStyle(
    color: Colors.white,
    backgroundColor: BsColor.warning,
  );

  /// define info badge
  static const BsBadgeStyle info = BsBadgeStyle(
    color: Colors.white,
    backgroundColor: BsColor.info,
  );

  /// define light badge
  static const BsBadgeStyle light = BsBadgeStyle(
    color: Colors.black,
    backgroundColor: BsColor.light,
  );

  /// define dark badge
  static const BsBadgeStyle dark = BsBadgeStyle(
    color: Colors.white,
    backgroundColor: BsColor.dark,
  );
}