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

  final Axis dropdownDirection;

}

class _BsDropdownWrapperState extends State<BsDropdownWrapper> {

  GlobalKey<State> _key = GlobalKey<State>();

  late Size _size;
  late Offset _offset;
  late double _overlayTop = 0;
  late double _overlayLeft = 0;

  double _overlayHeight = 0;
  double _overlayWidth = 0;
  double _overlayMinHeight = 150;
  double _overlayMinWidth = 150;

  bool _done = false;

  @override
  void initState() {

    RenderBox renderBox = widget.containerKey.currentContext!.findRenderObject() as RenderBox;
    _size = renderBox.size;
    _offset = renderBox.localToGlobal(Offset.zero);

    if(widget.dropdownDirection == Axis.vertical)
      _overlayTop = _size.height + 5;

    if(widget.dropdownDirection == Axis.horizontal)
      _overlayLeft = _size.width - widget.containerMargin.right + 5;
    else _overlayLeft = widget.containerMargin.left;

    if(widget.dropdownMenuSize.minHeight != null)
      _overlayMinHeight = widget.dropdownMenuSize.minHeight!;

    if(widget.dropdownMenuSize.minWidth != null)
      _overlayMinWidth = widget.dropdownMenuSize.minWidth!;

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
      Offset offset = renderBox.localToGlobal(Offset.zero);
      Size screenSize = MediaQuery.of(context).size;

      /// Calculate container offset including margin
      Offset containerOffset = Offset(_offset.dx + widget.containerMargin.left, _offset.dy + widget.containerMargin.top);

      /// Validate overlay height if maxHeight has defined
      /// if maxHeight not defined height will set dynamic
      _overlayHeight = size.height;
      if(widget.dropdownMenuSize.maxHeight != null
          && size.height > widget.dropdownMenuSize.maxHeight!)
        _overlayHeight = widget.dropdownMenuSize.maxHeight!;

      /// Validate overlay height if maxWidth has defined
      /// if minWidth not defined width will set dynamic
      _overlayWidth = size.width;
      if(widget.dropdownMenuSize.maxWidth != null
          && _size.width > widget.dropdownMenuSize.maxWidth!)
        _overlayWidth = widget.dropdownMenuSize.maxWidth!;

      /// Set validate overlay size to Size class
      Size overlayValidaSize = Size(_overlayWidth, _overlayHeight);

      /// Set overlay size screen including offset screen
      Size overlayScreenSize = Size(containerOffset.dx + overlayValidaSize.width, containerOffset.dy + overlayValidaSize.height);

      /// When overlay screen height is more than screen height
      if(overlayScreenSize.height > screenSize.height) {

        /// Calculate the possible overlay height
        double resultHeight = screenSize.height - offset.dy - 10;

        /// When result of calculate the possible overlay height
        /// is less then minimum overlay height
        if(resultHeight < _overlayMinHeight) {}

        /// If result of calculate the possible overlay height
        /// is more then minimum overlay height, set overlay height
        /// to resultHeight
        else
          _overlayHeight = resultHeight;
      }

      /// When overlay screen height is more than screen width
      if(overlayScreenSize.width > screenSize.width) {

        /// Calculate the possible overlay width
        double resultWidth = screenSize.width - offset.dx - 10;

        /// When result of calculate the possible overlay width
        /// is less then minimum overlay width
        if(resultWidth < _overlayMinWidth) {}

        /// If result of calculate the possible overlay width
        /// is more then minimum overlay width, set overlay width
        /// to resultWidth
        else
          _overlayWidth = resultWidth;
      }

      /// Update overlay validate size
      overlayValidaSize = Size(_overlayWidth, _overlayHeight);

      /// Update overlay size including offset
      overlayScreenSize = Size(containerOffset.dx + _overlayWidth, containerOffset.dy + _overlayHeight);

      /// When overlay screen height is more than screen width
      /// Set overlay to top of container
      if(overlayScreenSize.height > screenSize.height) {

        /// Will set offset top of overlay to overlay height
        ///
        /// If container has margin top, will set offset top of overlay to overlay height + container margin
        /// plus 5 (padding screen)
        _overlayTop = -(overlayValidaSize.height - widget.containerMargin.top + 5);

        if(widget.dropdownDirection == Axis.horizontal) {
          _overlayTop = -(overlayValidaSize.height - widget.containerMargin.top) + (_size.height - widget.containerMargin.top) + (_overlayHeight - size.height);
          _overlayHeight = size.height;
        }

        /// When container offset y minus overlay height is less then 10 (padding screen)
        /// Will set overlay height to maximal height
        ///
        /// if maximal height is not defined, sistem will calculate from
        /// offset container + margin top container
        else if(containerOffset.dy - overlayValidaSize.height <= 10)
          _overlayHeight = _offset.dy + widget.containerMargin.top - 15;


      }

      if(overlayScreenSize.width > screenSize.width) {

        _overlayLeft = widget.containerMargin.left - overlayValidaSize.width - 5;

        if(containerOffset.dx - _overlayWidth <= 10) {
          _overlayWidth = containerOffset.dx - 15;
          _overlayLeft = widget.containerMargin.left - _overlayWidth - 5;
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

    return GestureDetector(
      child: Container(
        child: Stack(
          children: [
            Positioned(
              child: CompositedTransformFollower(
                link: widget.layerLink,
                showWhenUnlinked: false,
                offset: Offset(_overlayLeft, _overlayTop),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Opacity(
                      opacity: _done ? 1 : 0,
                      child: Container(
                        key: _key,
                        height: _overlayHeight == 0 ? null : _overlayHeight,
                        width: _overlayWidth == 0 ? null : _overlayWidth,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: widget.dropdownMenuStyle.borderRadius,
                          boxShadow: widget.dropdownMenuStyle.boxShadow,
                          border: widget.dropdownMenuStyle.border,
                        ),
                        child: Scrollbar(child: SingleChildScrollView(
                          child: Material(
                            child: widget.dropdownMenu,
                          ),
                        )),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      onTap: () {},
    );
  }

}