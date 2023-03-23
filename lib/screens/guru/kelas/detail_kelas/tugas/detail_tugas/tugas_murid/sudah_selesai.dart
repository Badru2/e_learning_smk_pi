import 'package:e_learning_smk_pi/screens/guru/kelas/detail_kelas/tugas/detail_tugas/tugas_murid/berkas_tugas.dart';
import 'package:e_learning_smk_pi/widgets/my_font.dart';
import 'package:e_learning_smk_pi/widgets/my_line.dart';
import 'package:flutter/material.dart';

class SudahSelesai extends StatelessWidget {
  const SudahSelesai({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const LineBerita(),
        Container(
          alignment: Alignment.centerLeft,
          child: const Text(
            'Sudah Selesai',
            style: font20w6b,
          ),
        ),
        const SizedBox(height: 10),
        const LineBerita(),
        Container(
          alignment: Alignment.centerLeft,
          child: TextButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BerkasTugas(),
                  ));
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Effendy Gabriel Putra',
                  style: font20w6b,
                ),
                Text(
                  '85/100',
                  style: TextStyle(fontSize: 20),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
