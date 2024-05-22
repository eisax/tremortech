import 'package:tremortech/util/dimensiona.dart';
import 'package:flutter/material.dart';

class CustomSquareButtonWidget extends StatefulWidget {
 
  final Function() onTap;
  final Color backgroundColor;
  final double width;
  final double height;
  final EdgeInsets padding;
  final IconData icon;
  final Color? iconColor;

  CustomSquareButtonWidget({
  
    required this.onTap,
    this.backgroundColor = Colors.blue,
    this.width = 50.0,
    this.height = 30.0,
    this.padding = const EdgeInsets.all(0), required this.icon, this.iconColor,
  });

  @override
  _CustomSquareButtonWidgetState createState() =>
      _CustomSquareButtonWidgetState();
}

class _CustomSquareButtonWidgetState extends State<CustomSquareButtonWidget> {


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
          width: widget.width,
          height: widget.height,
          padding: widget.padding,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
                                          Dimensions.radiusSmall,
                                        ),
            color: widget.backgroundColor,
          ),
          child:  Icon(
          widget.icon,
            color:widget.iconColor?? Colors.white,
            size: 16,
          )),
    );
  }
}
