import 'package:bs_flutter_buttons/src/utils/bs_overlay.dart';
import 'package:flutter/material.dart';

class BsDropdownItem extends StatelessWidget {

  const BsDropdownItem({
    Key? key,
    this.padding = const EdgeInsets.fromLTRB(15, 8, 15, 8),
    this.child,
    this.onPressed,
  }) : super(key: key);

  final EdgeInsetsGeometry padding;

  final Widget? child;

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return TextButton(
          child: DefaultTextStyle(
            style: TextStyle(
              color: Theme.of(context).textTheme.bodyText1!.color,
            ),
            child: Container(
              width: constraints.maxWidth != double.infinity ? constraints.maxWidth : null,
              padding: padding,
              child: child,
            ),
          ),
          onPressed: () {
            BsOverlay.removeAll();
            if(onPressed != null)
              onPressed!();
          },
        );
      },
    );
  }

}