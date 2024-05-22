import 'package:flutter/material.dart';
import 'package:tremortech/util/dimensiona.dart';

class CustomLinearProgressBar extends StatelessWidget {

  final double length;
  final Color activeColor;
  final Color inactiveColor;
  final double value;

  CustomLinearProgressBar({
    
    this.length = 200.0,
    this.activeColor = Colors.blue,
    this.inactiveColor = Colors.grey,
    this.value = 0
  });

  @override
  Widget build(BuildContext context) {
    return Container(
    
      height: 5.0,
      child: LinearProgressIndicator(
        borderRadius: BorderRadius.circular(Dimensions.radiusExtraLarge),
        backgroundColor: inactiveColor,
        valueColor: AlwaysStoppedAnimation<Color>(activeColor),
        value: value, 
      ),
    );
  }
}