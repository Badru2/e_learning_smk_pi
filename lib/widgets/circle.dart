import 'package:flutter/material.dart';

class CircleLoginKecil extends StatelessWidget {
  const CircleLoginKecil({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60,
      height: 60,
      // color: Colors.grey,
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: CustomPaint(
              size: const Size(50, 50),
              painter: CirclePainterFillBiru(),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: CustomPaint(
              size: const Size(50, 50),
              painter: CirclePainterStrokeBiru(),
            ),
          ),
        ],
      ),
    );
  }
}

class CircleLoginSedang extends StatelessWidget {
  const CircleLoginSedang({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 110,
      height: 105,
      // color: Colors.grey,
      child: Stack(
        children: [
          Positioned(
            bottom: 5,
            left: -50,
            child: CustomPaint(
              size: const Size(90, 90),
              painter: CirclePainterFillBiru(),
            ),
          ),
          Positioned(
            top: 1,
            left: -30,
            child: CustomPaint(
              size: const Size(90, 90),
              painter: CirclePainterStrokeBiruKecil(),
            ),
          ),
        ],
      ),
    );
  }
}

class CircleLoginBiruGelap extends StatelessWidget {
  const CircleLoginBiruGelap({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 110,
      height: 105,
      // color: Colors.grey,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            right: -25,
            child: CustomPaint(
              size: const Size(90, 90),
              painter: CirclePainterFillBiruGelap(),
            ),
          ),
          Positioned(
            top: 0,
            right: -14,
            child: CustomPaint(
              size: const Size(90, 90),
              painter: CirclePainterStrokeBiruCerah(),
            ),
          ),
        ],
      ),
    );
  }
}

class CirclePainterStrokeBiru extends CustomPainter {
  final _paint = Paint()
    ..color = const Color(0xFF13005A)
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

class CirclePainterStrokeBiruKecil extends CustomPainter {
  final _paint = Paint()
    ..color = const Color(0xFF13005A)
    ..strokeWidth = 3
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

class CirclePainterStrokeBiruCerah extends CustomPainter {
  final _paint = Paint()
    ..color = const Color(0xFF17D6E2)
    ..strokeWidth = 2
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

class CirclePainterFillBiru extends CustomPainter {
  final _paint = Paint()
    ..color = const Color(0xFF17D6E2)
    ..strokeWidth = 4
    // Use [PaintingStyle.fill] if you want the circle to be filled.
    ..style = PaintingStyle.fill;

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

class CirclePainterFillBiruGelap extends CustomPainter {
  final _paint = Paint()
    ..color = const Color(0xFF13005A)
    ..strokeWidth = 4
    // Use [PaintingStyle.fill] if you want the circle to be filled.
    ..style = PaintingStyle.fill;

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
