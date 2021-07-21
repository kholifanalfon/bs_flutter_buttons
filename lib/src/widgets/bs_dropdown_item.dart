import 'package:bs_flutter_buttons/src/utils/bs_overlay.dart';
import 'package:flutter/material.dart';

class BsDropdownItem extends StatelessWidget {

  const BsDropdownItem({
    Key? key,
    this.style,
    this.textStyle,
    this.disabled = false,
    this.disabledStyle,
    this.disabledTextStyle,
    this.active = false,
    this.activeStyle,
    this.activeTextStyle,
    this.padding = const EdgeInsets.fromLTRB(15, 8, 15, 8),
    this.child,
    this.onPressed,
  }) : super(key: key);

  final EdgeInsetsGeometry padding;

  final Decoration? style;

  final TextStyle? textStyle;

  final bool disabled;

  final Decoration? disabledStyle;

  final TextStyle? disabledTextStyle;

  final bool active;

  final Decoration? activeStyle;

  final TextStyle? activeTextStyle;

  final Widget? child;

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {

    TextStyle? txtStyle = TextStyle(
      color: Theme.of(context).textTheme.bodyText1!.color,
    ).merge(textStyle);

    Decoration btnStyle = BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.zero,
    );
    if(style != null)
      btnStyle = style!;

    if(disabled) {
      txtStyle = TextStyle(
        color: Colors.grey,
      ).merge(disabledTextStyle);

      btnStyle = BoxDecoration(
        color: Color(0xffe7e7e7),
        borderRadius: BorderRadius.zero,
      );
      if(disabledStyle != null)
        btnStyle = disabledStyle!;
    }

    else if(active) {
      txtStyle = TextStyle(
        color: Colors.white,
      ).merge(activeTextStyle);

      btnStyle = BoxDecoration(
        color: Theme.of(context).accentColor,
        borderRadius: BorderRadius.zero,
      );
      if(activeStyle != null)
        btnStyle = activeStyle!;
    }

    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          decoration: btnStyle,
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: disabled ? null : () {
                BsOverlay.removeAll();
                if(onPressed != null)
                  onPressed!();
              },
              child: DefaultTextStyle(
                style: txtStyle!,
                child: Container(
                  width: constraints.maxWidth != double.infinity ? constraints.maxWidth : null,
                  padding: padding,
                  child: child,
                ),
              ),
            ),
          ),
        );
      },
    );
  }

}