import 'package:flutter/material.dart';

class TextMading extends StatelessWidget {
  const TextMading({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'hubungi kami jika ingin membuat berita',
      style: TextStyle(
        fontFamily: 'Outfit',
        fontSize: 9,
        fontWeight: FontWeight.w400,
        color: Color(0xFF000000),
      ),
    );
  }
}
