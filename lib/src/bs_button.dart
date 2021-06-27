import 'package:bs_flutter_buttons/bs_flutter_buttons.dart';
import 'package:flutter/material.dart';

/// Widget class of button
class BsButton extends StatelessWidget {
  /// Construct [BsButton]
  const BsButton({
    Key? key,
    required this.onPressed,
    this.width,
    this.margin,
    this.label,
    this.prefixIcon,
    this.suffixIcon,
    this.badge,
    this.onLongPressed,
    this.style = BsButtonStyle.secondary,
    this.size = BsButtonSize.btnMd,
    this.autofocus = false,
    this.disabled = false,
    this.focusNode,
    this.clipBehavior = Clip.none,
    this.crossAxisAlignment = CrossAxisAlignment.start,
    this.mainAxisAlignment = MainAxisAlignment.start,
  }) : super(key: key);

  /// define width of [BsButton]
  final double? width;

  /// define label of [BsButton]
  final Widget? label;

  /// define onPressed of [BsButton]
  final VoidCallback onPressed;

  /// define prefixIcon of [BsButton]
  final IconData? prefixIcon;

  /// define suffixIcon of [BsButton]
  final IconData? suffixIcon;

  /// define badge of [BsButton]
  final Widget? badge;

  /// define onLongPressed of [BsButton]
  final VoidCallback? onLongPressed;

  /// define style of [BsButton]
  final BsButtonStyle? style;

  /// define size of [BsButton]
  final BsButtonSize? size;

  /// define margin of [BsButton]
  final EdgeInsetsGeometry? margin;

  /// define autofocus of [BsButton]
  final bool autofocus;

  /// define disabled of [BsButton]
  final bool disabled;

  /// define focusNode of [BsButton]
  final FocusNode? focusNode;

  /// define clipBehavior of [BsButton]
  final Clip clipBehavior;

  /// define crossAxisAlignment of [BsButton]
  final CrossAxisAlignment crossAxisAlignment;

  /// define mainAxisAlignment of [BsButton]
  final MainAxisAlignment mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossAxisAlignment,
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Container(
          width: width,
          margin: margin,
          child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor:
                disabled && style!.backgroundColor != Colors.transparent
                    ? style!.backgroundColor!.withOpacity(0.5)
                    : style!.backgroundColor,
                padding: size!.padding,
                minimumSize: size!.minimumSize,
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: !disabled
                        ? style!.borderColor
                        : style!.borderColor.withOpacity(0.5),
                  ),
                  borderRadius: style!.borderRadius,
                ),
              ),
              onPressed: () => !disabled ? onPressed() : {},
              onLongPress: onLongPressed,
              focusNode: focusNode,
              clipBehavior: clipBehavior,
              autofocus: autofocus,
              child: DefaultTextStyle(
                style: TextStyle(
                  color:
                  !disabled ? style!.color : style!.color!.withOpacity(0.5),
                  fontSize: size!.fontSize,
                  fontWeight: FontWeight.w100,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    prefixIcon == null
                        ? Container(width: 0)
                        : Container(
                      margin: label != null
                          ? EdgeInsets.only(right: size!.spaceLabelIcon)
                          : EdgeInsets.zero,
                      child: Icon(prefixIcon,
                          size: size!.iconSize,
                          color: !disabled
                              ? style!.color
                              : style!.color!.withOpacity(0.5)),
                    ),
                    label == null
                        ? Container(width: 0)
                        : Container(child: label),
                    badge == null
                        ? Container(width: 0)
                        : Container(
                        margin: EdgeInsets.only(
                            left: size!.spaceLabelIcon,
                            right: suffixIcon == null
                                ? size!.spaceLabelIcon
                                : 0.0),
                        child: badge),
                    suffixIcon == null
                        ? Container(width: 0)
                        : Container(
                      margin: label != null
                          ? EdgeInsets.only(left: size!.spaceLabelIcon)
                          : EdgeInsets.zero,
                      child: Icon(suffixIcon,
                          size: size!.iconSize,
                          color: !disabled
                              ? style!.color
                              : style!.color!.withOpacity(0.5)),
                    ),
                  ],
                ),
              )),
        )
      ],
    );
  }
}