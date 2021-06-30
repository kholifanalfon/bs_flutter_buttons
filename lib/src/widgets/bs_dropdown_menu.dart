import 'package:flutter/cupertino.dart';

class BsDropdownMenu extends StatelessWidget {

  const BsDropdownMenu({
    Key? key,
    this.crossAxisAlignment = CrossAxisAlignment.start,
    this.children = const [],
  }) : super(key: key);

  final CrossAxisAlignment crossAxisAlignment;

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: crossAxisAlignment,
        mainAxisSize: MainAxisSize.min,
        children: children,
      ),
    );
  }

}