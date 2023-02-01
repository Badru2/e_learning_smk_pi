import 'package:flutter/material.dart';

class ButtonBacaMading extends StatelessWidget {
  const ButtonBacaMading({super.key});

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
          'Baca Mading',
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
