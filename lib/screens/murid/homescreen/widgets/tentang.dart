import 'package:e_learning_smk_pi/widgets/my_font.dart';
import 'package:e_learning_smk_pi/widgets/my_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

class Tentang extends StatelessWidget {
  const Tentang({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('Tentang', style: font15w6),
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.8,
              width: MediaQuery.of(context).size.width,
              child: SingleChildScrollView(
                child: Container(
                  margin: const EdgeInsets.only(left: 10, right: 10, top: 10),
                  child: Column(
                    children: [
                      const ListTile(
                        visualDensity: VisualDensity(vertical: 4),
                        title: Text('Waktu Pembuatan:', style: font20w6b),
                        subtitle:
                            Text('11 Januari - 31 Maret 2023', style: font12w5),
                      ),
                      const ListTile(
                        visualDensity: VisualDensity(vertical: 4),
                        title: Text('Perusahaan:', style: font20w6b),
                        subtitle: Text('Saptaloka Digital', style: font12w5),
                      ),
                      const ListTile(
                        visualDensity: VisualDensity(vertical: 4),
                        title: Text('Alamat Perusahaan:', style: font20w6b),
                        subtitle: Text(
                            'Di dalam 138 Coffee, Jalan Melong Tengah No.138, Cimahi, Melong, Cimahi Selatan, Bandung Regency, West Java 40534',
                            style: font12w5),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 18, bottom: 10),
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          'Pembuat:',
                          style: font20w6b,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(
                          left: 20,
                        ),
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          'Programmer:',
                          style: font20w6b,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 30, top: 10),
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          'Pembimbing:',
                          style: font15w6,
                        ),
                      ),
                      ListTile(
                        contentPadding: const EdgeInsets.only(left: 30),
                        dense: true,
                        minLeadingWidth: 10,
                        visualDensity: const VisualDensity(horizontal: -4),
                        leading: MyBullet(),
                        title: const Text(
                          'Fikri zaki aditama',
                          style: font15w6,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 30, top: 10),
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          'Murid:',
                          style: font15w6,
                        ),
                      ),
                      ListTile(
                        contentPadding: const EdgeInsets.only(left: 30),
                        dense: true,
                        minLeadingWidth: 10,
                        visualDensity: const VisualDensity(horizontal: -4),
                        leading: MyBullet(),
                        title: const Text(
                          'Hilal Badru Zaman',
                          style: font15w6,
                        ),
                      ),
                      ListTile(
                        contentPadding: const EdgeInsets.only(left: 30),
                        dense: true,
                        minLeadingWidth: 10,
                        visualDensity: const VisualDensity(horizontal: -4),
                        leading: MyBullet(),
                        title: const Text(
                          'Felisa Ismi Anggraeni',
                          style: font15w6,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(
                          left: 20,
                        ),
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          'UI/UX:',
                          style: font20w6b,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 30, top: 10),
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          'Pembimbing:',
                          style: font15w6,
                        ),
                      ),
                      ListTile(
                        contentPadding: const EdgeInsets.only(left: 30),
                        dense: true,
                        minLeadingWidth: 10,
                        visualDensity: const VisualDensity(horizontal: -4),
                        leading: MyBullet(),
                        title: const Text(
                          'Daffa',
                          style: font15w6,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 30, top: 10),
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          'Murid:',
                          style: font15w6,
                        ),
                      ),
                      ListTile(
                        contentPadding: const EdgeInsets.only(left: 30),
                        dense: true,
                        minLeadingWidth: 10,
                        visualDensity: const VisualDensity(horizontal: -4),
                        leading: MyBullet(),
                        title: const Text(
                          'Muhammad Salman A.I',
                          style: font15w6,
                        ),
                      ),
                      ListTile(
                        contentPadding: const EdgeInsets.only(left: 30),
                        dense: true,
                        minLeadingWidth: 10,
                        visualDensity: const VisualDensity(horizontal: -4),
                        leading: MyBullet(),
                        title: const Text(
                          'Awaysha Cessarusmana',
                          style: font15w6,
                        ),
                      ),
                      const ListTile(
                        visualDensity: VisualDensity(vertical: 4),
                        title: Text(
                          'Asal Sekolah:',
                          style: font20w6b,
                        ),
                        subtitle: Text(
                          'SMK Prakarya Internasional',
                          style: font15w6,
                        ),
                      ),
                      const ListTile(
                        visualDensity: VisualDensity(vertical: 4),
                        title: Text(
                          'Alamat Sekolah',
                          style: font20w6b,
                        ),
                        subtitle: Text(
                          'Jl. Inhoftank No.46-146, Pelindung Hewan, Kec. Astanaanyar, Kota Bandung, Jawa Barat 40243',
                          style: font12w5,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              height: 80,
              color: Colors.black,
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.copyright,
                      color: Colors.white,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Copyright SMK PI',
                      style: font15w6w,
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
