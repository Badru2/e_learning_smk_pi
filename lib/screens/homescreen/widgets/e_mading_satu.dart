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
          height: 310,
          width: MediaQuery.of(context).size.width,
          decoration: borderEmading,
          child: Column(
            children: [
              SizedBox(
                height: 157,
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
              const SizedBox(
                child: ListTile(
                  title: Text(
                    'Juara 1 Lomba Matematika',
                    style: h3,
                  ),
                  subtitle: Text(
                    'Siswa SMK PI Berhasil Menjuarai Lomba Matematika SeBandung Raya Pada Tanggal 16/1/2023. Ayo kita beri ucapan selamat kepada para pemenang lomba yang sudah membanggakan nama sekolah kita.',
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
