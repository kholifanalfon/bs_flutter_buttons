import 'package:flutter/material.dart';

/// Class to create size of [BsButton]
class BsButtonSize {
  /// Constructor of [BsButtonSize]
  const BsButtonSize(
      {this.padding,
        this.fontSize,
        this.iconSize,
        this.spaceLabelIcon = 5.0,
        this.minimumSize});

  /// define padding of [BsButton]
  final EdgeInsets? padding;

  /// define fontSize of [BsButton]
  final double? fontSize;

  /// define iconSize of [BsButton]
  final double? iconSize;

  /// define spaceLabelIcon of [BsButton]
  final double spaceLabelIcon;

  /// define minimumSize of [BsButton]
  final Size? minimumSize;

  /// define size buttonIconSm button
  static const BsButtonSize btnIconSm = BsButtonSize(
    iconSize: 12.0,
    padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0, bottom: 10.0),
    minimumSize: Size(30.0, 30.0),
  );

  /// define size btnIconMd button
  static const BsButtonSize btnIconMd = BsButtonSize(
    iconSize: 18.0,
    padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0, bottom: 10.0),
    minimumSize: Size(40.0, 40.0),
  );

  /// define size btnIconLg button
  static const BsButtonSize btnIconLg = BsButtonSize(
    iconSize: 22.0,
    padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0, bottom: 10.0),
    minimumSize: Size(50.0, 50.0),
  );

  /// define size btnSm button
  static const BsButtonSize btnSm = BsButtonSize(
    iconSize: 10.0,
    fontSize: 10.0,
    padding: EdgeInsets.only(left: 15.0, right: 15.0, top: 10.0, bottom: 10.0),
    minimumSize: Size(30.0, 30.0),
  );

  /// define size btnMd button
  static const BsButtonSize btnMd = BsButtonSize(
    padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0, bottom: 10.0),
    fontSize: 12.0,
    iconSize: 12.0,
    minimumSize: Size(40.0, 40.0),
  );

  /// define size btnLg button
  static const BsButtonSize btnLg = BsButtonSize(
      iconSize: 18.0,
      fontSize: 18.0,
      padding:
      EdgeInsets.only(left: 30.0, right: 30.0, top: 10.0, bottom: 10.0),
      minimumSize: Size(50.0, 50.0),
      spaceLabelIcon: 10.0);
}