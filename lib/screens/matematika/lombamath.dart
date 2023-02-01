import 'package:flutter/material.dart';

class ButtonBagianMath extends StatelessWidget {
  const ButtonBagianMath({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: const ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(
          Color(0xFF4681F4),
        ),
      ),
      onPressed: () {},
      child: const Center(
        child: Text(
          'Baca Selengkapnya',
          style: TextStyle(
            color: Color(0xFFffffff),
            fontFamily: 'SemiBold',
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
