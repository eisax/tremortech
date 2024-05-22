import 'package:flutter/material.dart';

class SelectionBoxWidget extends StatefulWidget {
  final bool value;
  final Function(bool) onChanged;
  final Color activeColor;
  final Color backgroundColor;
  final double width;
  final double height;
  final EdgeInsets padding;

  SelectionBoxWidget({
    required this.value,
    required this.onChanged,
    this.activeColor = Colors.blue,
    this.backgroundColor = Colors.transparent,
    this.width = 50.0,
    this.height = 30.0,
    this.padding = const EdgeInsets.all(0),
  });

  @override
  _SelectionBoxWidgetState createState() => _SelectionBoxWidgetState();
}

class _SelectionBoxWidgetState extends State<SelectionBoxWidget> {
  late bool switchValue;

  @override
  void initState() {
    super.initState();
    switchValue = widget.value;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          switchValue = !switchValue;
          widget.onChanged(switchValue);
        });
      },
      child: Container(
        width: widget.width,
        height: widget.height,
        padding: widget.padding,
        decoration: BoxDecoration(
          border:
              !switchValue ? Border.all(width: 1, color: Colors.black) : null,
          borderRadius: BorderRadius.circular(2),
          color: switchValue ? widget.activeColor : widget.backgroundColor,
        ),
        child: switchValue
            ? const Icon(
                Icons.done,
                color: Colors.white,
                size: 16,
              )
            : null,
      ),
    );
  }
}
