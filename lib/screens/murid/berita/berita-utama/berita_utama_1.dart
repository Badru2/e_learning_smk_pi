import 'package:e_learning_smk_pi/widgets/my_font.dart';
import 'package:flutter/material.dart';
import '../detail-berita-utama/detail_berita_utama1.dart';

class BagianMadingMtk extends StatelessWidget {
  const BagianMadingMtk({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const DetailBerita()),
        );
      },
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
                'assets/image/Rectangle 39.png',
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Column(
              children: [
                const Align(
                  alignment: Alignment.centerLeft,
                  child: SizedBox(
                    width: 230,
                    child: Text(
                      'Siswa/i SMK Pi juara matematika se bandung raya',
                      style: font15w6,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  'siswa/i SMK PI berhasil juara lomba matematika sebandung raya pada tanggal 27-01-2023',
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
                    Text('3 Hari Lalu', style: font7w5),
                    Text(
                      '|',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      'Osis SMK PI',
                      style: TextStyle(
                        fontFamily: 'Outfit',
                        fontSize: 7,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
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
