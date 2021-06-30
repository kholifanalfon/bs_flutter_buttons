import 'package:bs_flutter_utils/bs_flutter_utils.dart';
import 'package:flutter/material.dart';

class BsDropdownDivider extends StatelessWidget {

  const BsDropdownDivider({
    Key? key,
    this.border,
  }) : super(key: key);

  final Border? border;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: border != null ? border : Border(
          bottom: BorderSide(color: BsColor.borderColor)
        )
      ),
    );
  }
  
}