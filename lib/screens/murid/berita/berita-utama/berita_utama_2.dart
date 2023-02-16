import 'package:e_learning_smk_pi/widgets/my_font.dart';
import 'package:flutter/material.dart';

class BagianMadingPaskib extends StatelessWidget {
  const BagianMadingPaskib({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        minimumSize: Size.zero, // Set this
        padding: EdgeInsets.zero, // and this
      ),
      child: SizedBox(
        width: 350,
        child: Column(
          children: [
            Container(
              width: 350,
              height: 157,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  color: Colors.black,
                  width: 2,
                ),
              ),
              child: Image.asset(
                'assets/image/Rectangle 111.png',
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: SizedBox(
                    width: 240,
                    child: const Text(
                      'Siswa/i SMK Pi juara 2 lomba paskibra seBandung raya',
                      maxLines: 2,
                      style: font15w6,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  'siswa/i SMK PI berhasil juara ke-2 lomba Paskibra sebandung raya pada tanggal 28-01-2023',
                  maxLines: 2,
                  style: font11w5,
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  children: const [
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '2 Hari Lalu'
                      ' | '
                      'Osis SMK PI',
                      style: font7w5,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
