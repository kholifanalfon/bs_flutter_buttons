import 'package:bs_flutter_buttons/bs_flutter_buttons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BsDropdownWrapper extends StatefulWidget {

  const BsDropdownWrapper({
    required this.containerKey,
    required this.containerMargin,
    required this.layerLink,
    required this.dropdownMenu,
    required this.dropdownMenuStyle,
    required this.dropdownMenuSize,
    required this.dropdownDirection,
  });

  @override
  State<StatefulWidget> createState() {
    return _BsDropdownWrapperState();
  }

  final GlobalKey<State> containerKey;

  final EdgeInsets containerMargin;

  final LayerLink layerLink;

  final BsDropdownMenu dropdownMenu;

  final BsDropdownMenuStyle dropdownMenuStyle;

  final BsDropdownMenuSize dropdownMenuSize;

  final BsDropdownDirection dropdownDirection;

}

class _BsDropdownWrapperState extends State<BsDropdownWrapper> {

  GlobalKey<State> _key = GlobalKey<State>();

  late Size _size;
  late Offset _offset;
  late double _overlayTop = 0;
  late double _overlayLeft = 0;

  double _overlayHeight = 0;
  double _overlayWidth = 0;

  bool _done = false;

  @override
  void initState() {

    RenderBox renderBox = widget.containerKey.currentContext!.findRenderObject() as RenderBox;
    _size = renderBox.size;
    _offset = renderBox.localToGlobal(Offset.zero);

    super.initState();
  }

  void updateState(Function function) {
    if(mounted)
      setState(() {
        function();
      });
  }

  void _checkHeight() {
    Future.delayed(Duration(microseconds: 1), () {

      /// Getting source size and offset from container toggle
      RenderBox renderBox = _key.currentContext!.findRenderObject() as RenderBox;
      Size size = renderBox.size;
      Size screenSize = MediaQuery.of(context).size;

      _overlayWidth = size.width;
      _overlayHeight = size.height;

      if(_overlayWidth < widget.dropdownMenuSize.minWidth)
        _overlayWidth = widget.dropdownMenuSize.minWidth;

      else if(widget.dropdownMenuSize.maxWidth != double.infinity
          && _overlayWidth > widget.dropdownMenuSize.maxWidth)
        _overlayWidth = widget.dropdownMenuSize.maxWidth;

      if(widget.dropdownMenuSize.minHeight > 0
          && _overlayHeight < widget.dropdownMenuSize.maxHeight)
        _overlayHeight = widget.dropdownMenuSize.maxHeight;

      else if(widget.dropdownMenuSize.maxHeight != double.infinity
          && _overlayHeight > widget.dropdownMenuSize.maxHeight)
        _overlayHeight = widget.dropdownMenuSize.maxHeight;

      Offset overlayMaxPosition = Offset(_offset.dx + _size.width + _overlayWidth, _offset.dy + _size.height + _overlayHeight);

      double leftWidth = _offset.dx - 15;
      if(widget.dropdownDirection == BsDropdownDirection.vertical)
        leftWidth = _offset.dx + _size.width - 10;

      double rightWidth = screenSize.width - (_offset.dx + _size.width + 15);
      if(widget.dropdownDirection == BsDropdownDirection.vertical)
        rightWidth = screenSize.width - _offset.dx - 10;

      double topHeight = _offset.dy + _size.height - 10;
      if(widget.dropdownDirection == BsDropdownDirection.vertical)
        topHeight = _offset.dy - 15;

      double bottomHeight = screenSize.height - (_offset.dy + 10);
      if(widget.dropdownDirection == BsDropdownDirection.vertical)
        bottomHeight = screenSize.height - (_offset.dy + _size.height + 15);

      if(widget.dropdownDirection == BsDropdownDirection.right) {
        _overlayLeft = _size.width + widget.containerMargin.left + 5;
      }

      else if(widget.dropdownDirection == BsDropdownDirection.bottom)
        _overlayTop = _size.height + widget.containerMargin.top + 5;

      else if(widget.dropdownDirection == BsDropdownDirection.left)
        _overlayLeft = -(_overlayWidth + 5);

      else if(widget.dropdownDirection == BsDropdownDirection.top)
        _overlayTop = -(_overlayHeight + 5);

      else if(widget.dropdownDirection == BsDropdownDirection.horizontal
        || widget.dropdownDirection == BsDropdownDirection.vertical) {

        if(overlayMaxPosition.dx > screenSize.width) {

          if(leftWidth > rightWidth) {

            if(leftWidth > widget.dropdownMenuSize.maxWidth)
              _overlayWidth = widget.dropdownMenuSize.maxWidth;

            else if(_overlayWidth > leftWidth)
              _overlayWidth = leftWidth;

            if(widget.dropdownDirection == BsDropdownDirection.vertical)
              _overlayLeft = widget.containerMargin.left - _overlayWidth + _size.width;

            else if(widget.dropdownDirection == BsDropdownDirection.horizontal) {
              _overlayLeft = widget.containerMargin.left - _overlayWidth - 5;
            }
          }

          else {
            if(rightWidth > widget.dropdownMenuSize.maxWidth)
              _overlayWidth = widget.dropdownMenuSize.maxWidth;

            else
              _overlayWidth = rightWidth;

            if(widget.dropdownDirection == BsDropdownDirection.vertical)
              _overlayLeft = widget.containerMargin.left;

            else if(widget.dropdownDirection == BsDropdownDirection.horizontal)
              _overlayLeft = widget.containerMargin.left + _size.width + 5;
          }

        }

        else {
          if(widget.dropdownDirection == BsDropdownDirection.vertical)
            _overlayLeft = widget.containerMargin.left;
          else if(widget.dropdownDirection == BsDropdownDirection.horizontal) {
            _overlayLeft = widget.containerMargin.left + _size.width + 5;
          }
        }

        if(overlayMaxPosition.dy > screenSize.height) {
          if(bottomHeight > topHeight) {

            if(bottomHeight > widget.dropdownMenuSize.maxHeight)
              _overlayHeight = widget.dropdownMenuSize.maxHeight;

            else
              _overlayHeight = bottomHeight;

            if(widget.dropdownDirection == BsDropdownDirection.vertical)
              _overlayTop = widget.containerMargin.top + _size.height + 5;

            else if(widget.dropdownDirection == BsDropdownDirection.horizontal)
              _overlayTop = widget.containerMargin.top;
          }

          else {

            if(topHeight > widget.dropdownMenuSize.maxHeight)
              _overlayHeight = widget.dropdownMenuSize.maxHeight;

            else if(_overlayHeight > topHeight)
              _overlayHeight = topHeight;

            if(widget.dropdownDirection == BsDropdownDirection.vertical)
              _overlayTop = widget.containerMargin.top - _overlayHeight - 5;

            else if(widget.dropdownDirection == BsDropdownDirection.horizontal)
              _overlayTop = widget.containerMargin.top - _overlayHeight + _size.height;
          }
        }

        else {
          if(widget.dropdownDirection == BsDropdownDirection.vertical)
            _overlayTop = widget.containerMargin.top + _size.height + 5;
          else if(widget.dropdownDirection == BsDropdownDirection.horizontal)
            _overlayTop = widget.containerMargin.top;
        }
      }


      updateState(() {
        _done = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    if(!_done) _checkHeight();

    return Opacity(
      opacity: _done ? 1 : 0,
      child: Container(
        child: Stack(
          children: [
            Positioned(
              child: CompositedTransformFollower(
                link: widget.layerLink,
                showWhenUnlinked: false,
                offset: Offset(_overlayLeft, _overlayTop),
                child: Scrollbar(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          key: _key,
                          height: _overlayHeight == 0 ? null : _overlayHeight,
                          width: _overlayWidth == 0 ? null : _overlayWidth,
                          decoration: BoxDecoration(
                            color: widget.dropdownMenuStyle.backgroundColor,
                            borderRadius: widget.dropdownMenuStyle.borderRadius,
                            boxShadow: widget.dropdownMenuStyle.boxShadow,
                            border: widget.dropdownMenuStyle.border,
                          ),
                          clipBehavior: Clip.hardEdge,
                          child: SingleChildScrollView(
                            child: Material(
                              child: widget.dropdownMenu,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ),
            )
          ],
        ),
      ),
    );
  }

}