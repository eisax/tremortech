import 'package:flutter/material.dart';

class DashedDivider extends StatelessWidget {
  final Color color;

  const DashedDivider({super.key, required this.color});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CustomPaint(
        painter: DashedLinePainter(
          color: color
        ),
      ),
    );
  }
}

class DashedLinePainter extends CustomPainter {
  final Color color;

  DashedLinePainter({super.repaint, required this.color});
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = color
      ..strokeWidth = 1.0 
      ..style = PaintingStyle.stroke;

    final double dashWidth = 5.0;
    final double dashSpace = 5.0;

    double startX = 0.0;
    while (startX < size.width) {
      canvas.drawLine(
          Offset(startX, 0.0), Offset(startX + dashWidth, 0.0), paint);
      startX += dashWidth + dashSpace;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
