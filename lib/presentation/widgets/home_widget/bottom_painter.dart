import 'package:flutter/material.dart';

class BottomPainter extends CustomPainter {
  final Color backgroundColor;

  BottomPainter({super.repaint, required this.backgroundColor});
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = backgroundColor
      ..style = PaintingStyle.fill;

    Path path = Path()
      ..moveTo(0, 0)
      ..lineTo(size.width - 70, 0)
      ..arcToPoint(
        Offset(size.width - 20, 0),
        clockwise: false,
        radius: const Radius.circular(5),
      )
      ..lineTo(size.width, 0)
      ..lineTo(size.width, size.height)
      ..lineTo(0, size.height)
      ..close();

    canvas.drawPath(path, paint);
    canvas.drawShadow(path, Color.fromRGBO(0, 0, 0, 0.1), 5, false);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
