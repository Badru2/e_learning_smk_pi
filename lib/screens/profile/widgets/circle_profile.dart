import 'package:e_learning_smk_pi/screens/login/widgets/circle.dart';
import 'package:flutter/material.dart';

class CircleProfileAtas extends StatelessWidget {
  const CircleProfileAtas({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      child: Stack(children: [
        Positioned(
          right: -20,
          top: -20,
          child: CustomPaint(
            size: Size(130, 130),
            painter: Circle(),
          ),
        ),
      ]),
    );
  }
}

class CircleProfileBawah extends StatelessWidget {
  const CircleProfileBawah({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      child: Stack(children: [
        Positioned(
          bottom: -20,
          left: -20,
          child: CustomPaint(
            size: Size(130, 130),
            painter: Circle(),
          ),
        ),
      ]),
    );
  }
}

class Circle extends CustomPainter {
  final _paint = Paint()
    ..color = const Color(0xFF0094FF)
    ..strokeWidth = 4
    // Use [PaintingStyle.fill] if you want the circle to be filled.
    ..style = PaintingStyle.stroke;

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawOval(
      Rect.fromLTWH(0, 0, size.width, size.height),
      _paint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
