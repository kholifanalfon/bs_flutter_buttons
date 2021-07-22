import 'package:bs_flutter_buttons/bs_flutter_buttons.dart';
import 'package:flutter/material.dart';

/// Widget class of button
class BsButton extends StatefulWidget {
  /// Construct [BsButton]
  const BsButton({
    Key? key,
    required this.onPressed,
    this.width,
    this.margin,
    this.label,
    this.prefixIcon,
    this.suffixIcon,
    this.badge,
    this.onLongPressed,
    this.style = BsButtonStyle.secondary,
    this.size = BsButtonSize.btnMd,
    this.autofocus = false,
    this.disabled = false,
    this.focusNode,
    this.clipBehavior = Clip.none,
    this.crossAxisAlignment = CrossAxisAlignment.start,
    this.mainAxisAlignment = MainAxisAlignment.start,
  }) : super(key: key);

  /// define width of [BsButton]
  final double? width;

  /// define label of [BsButton]
  final Widget? label;

  /// define onPressed of [BsButton]
  final VoidCallback onPressed;

  /// define prefixIcon of [BsButton]
  final IconData? prefixIcon;

  /// define suffixIcon of [BsButton]
  final IconData? suffixIcon;

  /// define badge of [BsButton]
  final Widget? badge;

  /// define onLongPressed of [BsButton]
  final VoidCallback? onLongPressed;

  /// define style of [BsButton]
  final BsButtonStyle style;

  /// define size of [BsButton]
  final BsButtonSize? size;

  /// define margin of [BsButton]
  final EdgeInsetsGeometry? margin;

  /// define autofocus of [BsButton]
  final bool autofocus;

  /// define disabled of [BsButton]
  final bool disabled;

  /// define focusNode of [BsButton]
  final FocusNode? focusNode;

  /// define clipBehavior of [BsButton]
  final Clip clipBehavior;

  /// define crossAxisAlignment of [BsButton]
  final CrossAxisAlignment crossAxisAlignment;

  /// define mainAxisAlignment of [BsButton]
  final MainAxisAlignment mainAxisAlignment;

  @override
  State<BsButton> createState() {
    return _BsButtonState();
  }
}

class _BsButtonState extends State<BsButton> {

  late Color _backgroundColor;
  late Color _color;

  late FocusNode _focusNode;

  bool _onHover = false;

  VoidCallback? get _onPressed {
    if(!widget.disabled) {
      updateState(() {
        _backgroundColor = widget.disabled ? widget.style.disabledBackgroundColor : widget.style.backgroundColor;
        _color = widget.disabled ? widget.style.disabledColor : widget.style.color;
      });
      return () {
        _focusNode.requestFocus();
        widget.onPressed();
      };
    }

    return null;
  }

  @override
  void initState() {
    _focusNode = widget.focusNode != null ? widget.focusNode! : FocusNode();
    _focusNode.addListener(_onFocus);

    _backgroundColor = widget.disabled ? widget.style.disabledBackgroundColor : widget.style.backgroundColor;
    _color = widget.disabled ? widget.style.disabledColor : _focusNode.hasFocus ? widget.style.focusColor : widget.style.color;
    super.initState();
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  void _onFocus() {
    updateState(() {
      _backgroundColor = widget.disabled ? widget.style.disabledBackgroundColor : widget.style.backgroundColor;
      _color = widget.disabled ? widget.style.disabledColor : _focusNode.hasFocus ? widget.style.focusColor : widget.style.color;
    });
  }

  void updateState(Function function) {
    if(mounted)
      setState(() {
        function();
      });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: widget.crossAxisAlignment,
      mainAxisAlignment: widget.mainAxisAlignment,
      children: [
        Container(
          width: widget.width,
          margin: widget.margin,
          decoration: BoxDecoration(
            color: _backgroundColor,
            border: Border.all(color: widget.disabled && widget.style.borderColor != Colors.transparent
                ? widget.style.borderColor.withOpacity(0.5)
                : widget.style.borderColor
            ),
            borderRadius: widget.style.borderRadius,
            boxShadow: !_focusNode.hasFocus || widget.disabled ? [] : [
              BoxShadow(
                color: _backgroundColor.withOpacity(0.3),
                spreadRadius: 3.0,
                blurRadius: 0.0
              )
            ]
          ),
          clipBehavior: widget.clipBehavior,
          child: Material(
            borderRadius: widget.style.borderRadius,
            child: InkWell(
              autofocus: widget.autofocus,
              focusNode: _focusNode,
              onTap: _onPressed,
              onHover: (hovered) {
                _onHover = hovered;

                if(hovered && !widget.disabled) {
                  if(widget.style.hoverBackgroundColor != null)
                    _backgroundColor = widget.style.hoverBackgroundColor!;
                }

                else {
                  _backgroundColor = widget.disabled ? widget.style.disabledBackgroundColor : widget.style.backgroundColor;
                  _color = widget.disabled ? widget.style.disabledColor : _focusNode.hasFocus ? widget.style.focusColor : widget.style.color;
                }

                updateState(() {});
              },
              mouseCursor: widget.disabled ? SystemMouseCursors.noDrop : SystemMouseCursors.click,
              splashColor: _backgroundColor,
              hoverColor: Colors.black.withOpacity(0.15),
              focusColor: widget.style.focusBackgroundColor,
              borderRadius: widget.style.borderRadius,
              child: Container(
                padding: widget.size!.padding,
                decoration: BoxDecoration(
                  color: _focusNode.hasFocus ? widget.style.hoverBackgroundColor : Colors.transparent,
                  borderRadius: widget.style.borderRadius,
                  boxShadow: !_focusNode.hasFocus || widget.disabled ? [] : [
                    BoxShadow(
                      color: _backgroundColor.withOpacity(0.3),
                      spreadRadius: 3.0,
                      blurRadius: 0.0
                    )
                  ]
                ),
                child: DefaultTextStyle(
                  style: TextStyle(
                    color: _onHover ? widget.style.hoverColor : _focusNode.hasFocus ? widget.style.focusColor : _color,
                    fontSize: widget.size!.fontSize,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      widget.prefixIcon == null ? Container(width: 0) : Container(
                        margin: widget.label == null ? EdgeInsets.zero : EdgeInsets.only(right: widget.size!.spaceLabelIcon),
                        child: Icon(widget.prefixIcon,
                          size: widget.size!.iconSize,
                          color: _color
                        ),
                      ),
                      widget.label == null ? Container(width: 0) : Container(child: widget.label),
                      widget.suffixIcon == null ? Container(width: 0) : Container(
                        margin: widget.label == null ? EdgeInsets.zero : EdgeInsets.only(left: widget.size!.spaceLabelIcon),
                        child: Icon(widget.suffixIcon,
                          size: widget.size!.iconSize,
                          color: _color
                        ),
                      ),
                      widget.badge == null ? Container(width: 0) : Container(
                        margin: EdgeInsets.only(
                          left: widget.prefixIcon != null ? widget. size!.spaceLabelIcon : 0.0,
                          right: widget.suffixIcon != null ? widget.size!.spaceLabelIcon : 0.0
                        ),
                        child: widget.badge
                      ),
                    ],
                  ),
                ),
              ),
            ),
            color: Colors.transparent,
          ),
        ),
      ],
    );
  }
}