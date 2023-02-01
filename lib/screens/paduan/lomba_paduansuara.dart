import 'package:flutter/material.dart';

class LombaPaduanSuara1 extends StatelessWidget {
  const LombaPaduanSuara1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: 450,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
          width: 3,
          style: BorderStyle.solid,
        ),
      ),
      child: Column(
        children: [
          Container(
            child: Image.asset('assets/image/Rectangle 33.png'),
            height: 162,
            width: 345,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(25)),
            ),
            // decoration: const BoxDecoration(
            // border: BorderRadius.circular(20),
            // ),
          ),
          Container(
            child: const ListTile(
              title: Text(
                'Juara Lomba Paduan Suara!!',
                style: TextStyle(
                  fontFamily: 'Outfit',
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  height: 5,
                ),
              ),
              subtitle: Text(
                'Siswa/Siswi SMK PI Berhasil Menjuarai Lomba Paduan Suara SeJawa Barat Pada Tanggal 26/2/2023, Siswa Siswi Yang Membanggakan Ini Diberi Beasiswa Selama 3 Bulan Karena Telah Membanggakan Nama Sekolah.',
                style: TextStyle(
                  fontFamily: 'Outfit',
                  fontSize: 10,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
