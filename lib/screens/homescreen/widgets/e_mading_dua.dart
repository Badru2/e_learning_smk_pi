import 'package:e_learning_smk_pi/widgets/my_border.dart';
import 'package:flutter/material.dart';

import '../../../widgets/my_font.dart';

class EmadingDua extends StatelessWidget {
  const EmadingDua({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      width: MediaQuery.of(context).size.width,
      decoration: borderEmading,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: SizedBox.fromSize(
              child: Image.asset(
                'assets/image/image 33.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            child: ListTile(
              title: Text(
                'Juara Lomba Paduan Suara!!',
                style: h3,
              ),
              subtitle: Text(
                'Siswa/Siswi SMK PI Berhasil Menjuarai Lomba Paduan Suara SeJawa Barat Pada Tanggal 26/2/2023, Siswa Siswi Yang Membanggakan Ini Diberi Beasiswa Selama 3 Bulan Karena Telah Membanggakan Nama Sekolah.',
                style: textEmading,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 24,
            child: Align(
              widthFactor: 3,
              alignment: Alignment.centerLeft,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size.fromWidth(120),
                  backgroundColor: const Color(0xFF4681F4),
                ),
                onPressed: () {},
                child: const Center(
                  child: Text(
                    'Baca Selengkapnya',
                    style: textTombolEmading,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
