import 'package:flutter/material.dart';

class CircleProfileAtas extends StatelessWidget {
  const CircleProfileAtas({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 150,
      child: Stack(children: [
        //// Membuat Posisi Lingkaran jadi sedikit terpotong -->
        Positioned(
          right: -20,
          top: -20,
          child: CustomPaint(
            // Ukuran Lingkaran
            size: const Size(130, 130),
            // Manggil Lingkaran
            painter: Circle(),
          ),
        ),
        //// Membuat Posisi Lingkaran jadi sedikit terpotong <--
      ]),
    );
  }
}

class CircleProfileBawah extends StatelessWidget {
  const CircleProfileBawah({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 150,
      child: Stack(children: [
        Positioned(
          bottom: -20,
          left: -20,
          child: CustomPaint(
            size: const Size(130, 130),
            painter: Circle(),
          ),
        ),
      ]),
    );
  }
}

//// Membuat Lingkaran -->
class Circle extends CustomPainter {
  final _paint = Paint()
    // Warna Lingkaran
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
//// Membuat Lingkaran <--
