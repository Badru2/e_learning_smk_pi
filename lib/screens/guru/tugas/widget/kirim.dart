import 'package:flutter/material.dart';

class Kirim extends StatelessWidget {
  const Kirim({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          width: 2,
          color: const Color(0xFF0066FF),
          style: BorderStyle.solid,
        ),
      ),
      child: const Center(
        child: Text(
          'Kirim',
          style: TextStyle(
            fontFamily: 'Outfit',
            fontSize: 15,
            color: Color(0xFF0066FF),
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
