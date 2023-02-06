import 'package:e_learning_smk_pi/screens/tugas/tugas_satu.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TextTugasScreen extends StatelessWidget {
  const TextTugasScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 27,
      width: 349,
      margin: const EdgeInsets.only(top: 8),
      decoration: BoxDecoration(
        color: const Color(0xFF13005A),
        borderRadius: BorderRadius.circular(5),
      ),
      //width: 349,
      //height: 27,
      // color: const Color(0xFF13005A),
      child: const Center(
        child: Text(
          'Tugas',
          style: TextStyle(
            fontFamily: 'Outfit',
            fontSize: 15,
            color: Color(0xFFffffff),
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}

class TugasScreen extends StatelessWidget {
  const TugasScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              child: Image.asset(
                'assets/image/image 8.png',
                fit: BoxFit.cover,
              ),
              width: MediaQuery.of(context).size.width,
              height: 107,
            ),
            TextTugasScreen(),
            BagianTugasMtk(),
          ],
        ),
      ),
    );
  }
}
