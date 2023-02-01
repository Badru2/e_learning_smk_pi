import 'package:flutter/material.dart';

class BacaBerita1 extends StatelessWidget {
  const BacaBerita1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 88,
      width: 348,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
          width: 3,
          style: BorderStyle.solid,
        ),
      ),
      child: const Text(
        'Baca Berita Lainnya Di Sini',
        style: TextStyle(
          fontFamily: 'Roboto',
          color: Color(0xFF000000),
          fontWeight: FontWeight.w400,
          fontSize: 20,
        ),
      ),
    );
  }
}
