import 'package:flutter/material.dart';

/// Class to create size of [BsButton]
class BsButtonSize {
  /// Constructor of [BsButtonSize]
  const BsButtonSize({
    this.padding,
    this.fontSize,
    this.iconSize,
    this.spaceLabelIcon = 5.0
  });

  /// define padding of [BsButton]
  final EdgeInsets? padding;

  /// define fontSize of [BsButton]
  final double? fontSize;

  /// define iconSize of [BsButton]
  final double? iconSize;

  /// define spaceLabelIcon of [BsButton]
  final double spaceLabelIcon;

  /// define size buttonIconSm button
  static const BsButtonSize btnIconSm = BsButtonSize(
    iconSize: 10.0,
    padding: EdgeInsets.fromLTRB(8, 8, 8, 8),
  );

  /// define size btnIconMd button
  static const BsButtonSize btnIconMd = BsButtonSize(
    iconSize: 14.0,
    padding: EdgeInsets.fromLTRB(8, 8, 8, 8),
  );

  /// define size btnIconLg button
  static const BsButtonSize btnIconLg = BsButtonSize(
    iconSize: 22.0,
    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
  );

  /// define size btnSm button
  static const BsButtonSize btnSm = BsButtonSize(
    iconSize: 10.0,
    fontSize: 10.0,
    padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
  );

  /// define size btnMd button
  static const BsButtonSize btnMd = BsButtonSize(
    padding: EdgeInsets.fromLTRB(12, 8, 12, 8),
    fontSize: 12.0,
    iconSize: 14.0,
  );

  /// define size btnLg button
  static const BsButtonSize btnLg = BsButtonSize(
      iconSize: 18.0,
      fontSize: 18.0,
      padding: EdgeInsets.fromLTRB(18, 8, 18, 8),
      spaceLabelIcon: 10.0
  );
}