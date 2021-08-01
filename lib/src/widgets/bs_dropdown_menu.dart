import 'package:bs_flutter_buttons/bs_flutter_buttons.dart';
import 'package:flutter/cupertino.dart';

class BsDropdownMenu extends StatelessWidget {

  const BsDropdownMenu({
    Key? key,
    this.crossAxisAlignment = CrossAxisAlignment.start,
    this.header,
    this.children = const [],
  }) : super(key: key);

  final CrossAxisAlignment crossAxisAlignment;

  final BsDropdownHeader? header;

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    List<Widget> _children = List<Widget>.from([]);
    if(header != null)
      _children.add(header!);

    _children.addAll(children);

    return Container(
      child: Column(
        crossAxisAlignment: crossAxisAlignment,
        mainAxisSize: MainAxisSize.min,
        children: _children,
      ),
    );
  }

}