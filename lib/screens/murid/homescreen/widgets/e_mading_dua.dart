import 'package:e_learning_smk_pi/widgets/my_border.dart';
import 'package:flutter/material.dart';
import '../../../../widgets/my_font.dart';

class EmadingDua extends StatelessWidget {
  const EmadingDua({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.45,
      // height: 310,
      width: MediaQuery.of(context).size.width,
      decoration: borderEmading,
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.25,
            // height: 157,
            width: MediaQuery.of(context).size.width,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: SizedBox.fromSize(
                child: Image.asset(
                  'assets/image/image 33.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.88,
            child: Column(
              children: [
                const ListTile(
                  contentPadding: EdgeInsets.zero,
                  dense: true,
                  visualDensity: VisualDensity(vertical: -3),
                  title: Text(
                    'Juara Lomba Paduan Suara!!',
                    style: h3,
                  ),
                ),
                const SizedBox(
                  child: ListTile(
                    contentPadding: EdgeInsets.zero,
                    dense: true,
                    visualDensity: VisualDensity(vertical: -4),
                    title: Text(
                      'Siswa/Siswi SMK PI Berhasil Menjuarai Lomba Paduan Suara SeJawa Barat Pada Tanggal 26/2/2023, Siswa Siswi Yang Membanggakan Ini Diberi Beasiswa Selama 3 Bulan Karena Telah Membanggakan Nama Sekolah.',
                      style: textEmading,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
                  child: Align(
                    widthFactor: 3,
                    alignment: Alignment.centerLeft,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size.fromWidth(
                            MediaQuery.of(context).size.width * 0.3),
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
          ),
        ],
      ),
    );
  }
}
