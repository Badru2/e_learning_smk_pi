import 'package:e_learning_smk_pi/widgets/my_border.dart';
import 'package:e_learning_smk_pi/widgets/my_font.dart';
import 'package:flutter/material.dart';

class EmadingSatu extends StatelessWidget {
  const EmadingSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          // height: 310,
          height: MediaQuery.of(context).size.height * 0.45,
          width: MediaQuery.of(context).size.width,
          decoration: borderEmading,
          child: Column(
            children: [
              SizedBox(
                // height: 157,
                height: MediaQuery.of(context).size.height * 0.25,
                width: MediaQuery.of(context).size.width,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: SizedBox.fromSize(
                    child: Image.asset(
                      'assets/image/Rectangle 37.png',
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
                        'Juara 1 Lomba Matematika',
                        style: h3,
                      ),
                    ),
                    const SizedBox(
                      child: ListTile(
                        contentPadding: EdgeInsets.zero,
                        dense: true,
                        visualDensity: VisualDensity(vertical: -4),
                        title: Text(
                          'Siswa SMK PI Berhasil Menjuarai Lomba Matematika SeBandung Raya Pada Tanggal 16/1/2023. Ayo kita beri ucapan selamat kepada para pemenang lomba yang sudah membanggakan nama sekolah kita.',
                          style: textEmading,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      // alignment: Alignment.centerLeft,
                      height: MediaQuery.of(context).size.height * 0.04,
                      // width: MediaQuery.of(context).size.width * 0.3,
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
        ),
        Positioned(
          left: 20,
          top: 12,
          child: Container(
            width: 50,
            height: 20,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color(0xFF0066FF),
            ),
            child: const Align(
              alignment: Alignment.center,
              child: Text(
                'Viral',
                style: TextStyle(
                  fontFamily: 'Outfit',
                  fontSize: 10,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
