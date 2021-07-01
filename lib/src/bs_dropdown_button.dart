import 'package:bs_flutter_buttons/bs_flutter_buttons.dart';
import 'package:bs_flutter_buttons/src/utils/bs_overlay.dart';
import 'package:bs_flutter_buttons/src/widgets/bs_dropdown_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BsDropdownButton extends StatefulWidget {

  const BsDropdownButton({
    Key? key,
    required this.toggleMenu,
    required this.dropdownMenu,
    this.dropdownDirection = Axis.vertical,
    this.focusNode,
    this.disabled = false,
    this.margin,
    this.dropdownMenuStyle = const BsDropdownMenuStyle(),
    this.dropdownMenuSize = const BsDropdownMenuSize(),
  }) : super(key: key);

  final FocusNode? focusNode;

  final bool disabled;

  final EdgeInsets? margin;

  final Widget Function(_BsDropdownButtonState _) toggleMenu;

  final BsDropdownMenu dropdownMenu;

  final Axis dropdownDirection;

  final BsDropdownMenuStyle dropdownMenuStyle;

  final BsDropdownMenuSize dropdownMenuSize;

  @override
  State<StatefulWidget> createState() {
    return _BsDropdownButtonState();
  }
}

class _BsDropdownButtonState extends State<BsDropdownButton> {

  GlobalKey<State> _key = GlobalKey<State>();

  bool isOpen = false;

  late FocusNode _focusNode;
  late LayerLink _layerLink;

  @override
  void initState() {
    _focusNode = widget.focusNode == null ? FocusNode() : widget.focusNode!;
    _focusNode.addListener(_onFocus);

    _layerLink = LayerLink();

    super.initState();
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  void _onFocus() {
    if (_focusNode.hasFocus && !widget.disabled) _open();
    else if(!_focusNode.hasFocus) _close();
  }

  void _onKeyPressed(RawKeyEvent event) {
    if(event.logicalKey == LogicalKeyboardKey.escape)
      _close();
  }

  void updateState(Function function) {
    if(mounted)
      setState(() {
        function();
      });
  }

  void toggle() {
    if(isOpen) _close();
    else _focusNode.requestFocus();
  }

  void _open() {
    BsOverlay.removeAll();

    BsOverlayEntry overlayEntry = BsOverlay.add(OverlayEntry(builder: (context) => BsDropdownWrapper(
      containerKey: _key,
      containerMargin: widget.margin != null ? widget.margin! : EdgeInsets.zero,
      layerLink: _layerLink,
      dropdownMenu: widget.dropdownMenu,
      dropdownDirection: widget.dropdownDirection,
      dropdownMenuStyle: widget.dropdownMenuStyle,
      dropdownMenuSize: widget.dropdownMenuSize,
    )), () => updateState(() {
      isOpen = false;
      _focusNode.unfocus();
    }));

    Overlay.of(context)!.insert(overlayEntry.overlayEntry);

    updateState(() => isOpen = true);
  }

  void _close() {
    BsOverlay.removeAll();

    _focusNode.unfocus();
    updateState(() => isOpen = false);
  }

  @override
  Widget build(BuildContext context) {
    return CompositedTransformTarget(
      link: _layerLink,
      child: RawKeyboardListener(
        focusNode: _focusNode,
        onKey: _onKeyPressed,
        child: Container(
          key: _key,
          margin: widget.margin,
          child: widget.toggleMenu(this),
        ),
      ),
    );
  }
}