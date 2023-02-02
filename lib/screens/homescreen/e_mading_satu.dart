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
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(25),
            ),
            border: Border.all(
              color: Colors.black,
              width: 3,
              style: BorderStyle.solid,
            ),
          ),
          child: Column(
            children: [
              Container(
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
              Container(
                child: const ListTile(
                  title: Text(
                    'Juara 1 Lomba Matematika',
                    style: TextStyle(
                      fontFamily: 'Outfit',
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                      height: 2,
                      color: Colors.black,
                    ),
                  ),
                  subtitle: Text(
                    'Siswa SMK PI Berhasil Menjuarai Lomba Matematika SeBandung Raya Pada Tanggal 16/1/2023. Ayo kita beri ucapan selamat kepada para pemenang lomba yang sudah membanggakan nama sekolah kita.',
                    style: TextStyle(
                      fontFamily: 'Outfit',
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 24,
                child: Align(
                  widthFactor: 3,
                  alignment: Alignment.centerLeft,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size.fromWidth(120),
                      backgroundColor: Color(0xFF4681F4),
                    ),
                    onPressed: () {},
                    child: const Center(
                      child: Text(
                        'Baca Selengkapnya',
                        style: TextStyle(
                          color: Color(0xFFffffff),
                          fontFamily: 'Roboto',
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                        ),
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
              color: Color(0xFF0066FF),
            ),
            child: Align(
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
