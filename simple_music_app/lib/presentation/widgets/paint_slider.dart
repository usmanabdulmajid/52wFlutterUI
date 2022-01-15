import 'package:flutter/material.dart';

class PaintSlider extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final greyPaint = Paint()
      ..color = const Color(0XFFADB1B2)
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke
      ..strokeWidth = 5.0;
    final blackPaint = Paint()
      ..color = Colors.black
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke
      ..strokeWidth = 5.0;
    final slider = Path();
    slider.moveTo(size.width * 0.1, 0);
    slider.arcToPoint(Offset(size.width * 0.9, 0),
        radius: const Radius.circular(200), clockwise: false);
    canvas.drawPath(slider, greyPaint);
    final stackSlider = Path();
    stackSlider.moveTo(size.width * 0.1, 0);
    stackSlider.arcToPoint(Offset(size.width * 0.9, 0),
        radius: const Radius.circular(200), clockwise: false);
    canvas.drawPath(stackSlider, blackPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
