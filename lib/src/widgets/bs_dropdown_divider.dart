import 'package:bs_flutter_utils/bs_flutter_utils.dart';
import 'package:flutter/material.dart';

class BsDropdownDivider extends StatelessWidget {

  const BsDropdownDivider({
    Key? key,
    this.decoration,
  }) : super(key: key);

  final Decoration? decoration;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: decoration != null ? decoration : BoxDecoration(
        border: Border(
          bottom: BorderSide(color: BsColor.borderColor)
        )
      ),
    );
  }
  
}