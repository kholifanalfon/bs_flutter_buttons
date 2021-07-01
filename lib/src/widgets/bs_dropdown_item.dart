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

  final ButtonStyle? style;

  final TextStyle? textStyle;

  final bool disabled;

  final ButtonStyle? disabledStyle;

  final TextStyle? disabledTextStyle;

  final bool active;

  final ButtonStyle? activeStyle;

  final TextStyle? activeTextStyle;

  final Widget? child;

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {

    TextStyle? txtStyle = TextStyle(
      color: Theme.of(context).textTheme.bodyText1!.color,
    ).merge(textStyle);

    ButtonStyle? btnStyle = TextButton.styleFrom(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.zero
      )
    ).merge(style);

    if(disabled) {
      txtStyle = TextStyle(
        color: Colors.grey,
      ).merge(disabledTextStyle);

      btnStyle = TextButton.styleFrom(
        backgroundColor: Color(0xffe7e7e7),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.zero
        )
      ).merge(disabledStyle);
    }

    else if(active) {
      txtStyle = TextStyle(
        color: Colors.white,
      ).merge(activeTextStyle);

      btnStyle = TextButton.styleFrom(
        backgroundColor: Theme.of(context).accentColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.zero
        )
      ).merge(activeStyle);
    }

    return LayoutBuilder(
      builder: (context, constraints) {
        return TextButton(
          style: btnStyle,
          child: DefaultTextStyle(
            style: txtStyle!,
            child: Container(
              width: constraints.maxWidth != double.infinity ? constraints.maxWidth : null,
              padding: padding,
              child: child,
            ),
          ),
          onPressed: disabled ? null : () {
            BsOverlay.removeAll();
            if(onPressed != null)
              onPressed!();
          },
        );
      },
    );
  }

}