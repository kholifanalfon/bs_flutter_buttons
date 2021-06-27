import 'package:bs_flutter_buttons/bs_flutter_buttons.dart';
import 'package:flutter/material.dart';

/// Widget bootstrap badge
class BsBadge extends StatelessWidget {
  /// Constructor [BsBadge]
  const BsBadge({
    Key? key,
    this.style = BsBadgeStyle.secondary,
    this.size = BsBadgeSize.medium,
    this.child,
  }) : super(key: key);

  /// define style of [BsBadge]
  final BsBadgeStyle style;

  /// define size of [BsBadge]
  final BsBadgeSize size;

  /// define child [BsBadge]
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: size.padding,
      margin: size.margin,
      decoration: BoxDecoration(
        color: style.backgroundColor,
        borderRadius: size.borderRadius,
      ),
      child: DefaultTextStyle(
        style: TextStyle(
          color: style.color,
          fontSize: size.fontSize,
        ),
        child: Container(
          child: child,
        ),
      ),
    );
  }
}