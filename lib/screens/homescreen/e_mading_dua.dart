import 'package:flutter/material.dart';

class EmadingDua extends StatelessWidget {
  const EmadingDua({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
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
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: SizedBox.fromSize(
              child: Image.asset(
                'assets/image/image 33.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            child: const ListTile(
              title: Text(
                'Juara Lomba Paduan Suara!!',
                style: TextStyle(
                  fontFamily: 'Outfit',
                  fontSize: 17,
                  fontWeight: FontWeight.w700,
                  height: 2,
                  color: Colors.black,
                ),
              ),
              subtitle: Text(
                'Siswa/Siswi SMK PI Berhasil Menjuarai Lomba Paduan Suara SeJawa Barat Pada Tanggal 26/2/2023, Siswa Siswi Yang Membanggakan Ini Diberi Beasiswa Selama 3 Bulan Karena Telah Membanggakan Nama Sekolah.',
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
    );
  }
}
