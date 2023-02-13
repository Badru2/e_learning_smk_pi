import 'package:e_learning_smk_pi/screens/berita/berita-utama/berita_utama_1.dart';
import 'package:e_learning_smk_pi/screens/berita/berita-utama/berita_utama_2.dart';
import 'package:e_learning_smk_pi/screens/berita/kontak.dart';
import 'package:e_learning_smk_pi/screens/berita/news.dart';
import 'package:e_learning_smk_pi/screens/berita/sub-berita/sub_berita_1.dart';
import 'package:e_learning_smk_pi/screens/berita/sub-berita/sub_berita_2.dart';
import 'package:e_learning_smk_pi/screens/berita/sub-berita/sub_berita_3.dart';
import 'package:e_learning_smk_pi/screens/berita/sub-berita/sub_berita_4.dart';
import 'package:e_learning_smk_pi/screens/berita/sub-berita/sub_berita_5.dart';
import 'package:e_learning_smk_pi/screens/berita/text_mading.dart';
import 'package:e_learning_smk_pi/widgets/my_line.dart';
import 'package:flutter/material.dart';

class BagianEMading extends StatelessWidget {
  const BagianEMading({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          'E-Mading',
          style: TextStyle(
            fontFamily: 'Outfit',
            fontSize: 30,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        toolbarHeight: 60,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              child: Column(
                children: const <Widget>[
                  SizedBox(
                    height: 20,
                  ),
                  GambarNewsMading(),
                  SizedBox(
                    height: 30,
                  ),
                  ListTile(
                    title: Text(
                      'Berita Utama',
                      style: TextStyle(
                        fontFamily: 'Outfit',
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  BagianMadingMtk(),
                  SizedBox(
                    height: 35,
                  ),
                  BagianMadingPaskib(),
                  SizedBox(
                    height: 20,
                  ),
                  ListTile(
                    title: Text(
                      'Sub-Berita',
                      style: TextStyle(
                        fontFamily: 'Outfit',
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  LineBerita(),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    child: BeritaPadus(),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  LineBerita(),
                  SizedBox(
                    height: 20,
                  ),
                  BagianPpdbSatu(),
                  SizedBox(
                    height: 20,
                  ),
                  LineBerita(),
                  SizedBox(
                    height: 20,
                  ),
                  BagianPpdbDua(),
                  SizedBox(
                    height: 20,
                  ),
                  LineBerita(),
                  SizedBox(
                    height: 20,
                  ),
                  BagianBeritaRobotic(),
                  SizedBox(
                    height: 20,
                  ),
                  LineBerita(),
                  SizedBox(
                    height: 20,
                  ),
                  BeritaLombaPoster(),
                  SizedBox(
                    height: 20,
                  ),
                  LineBerita(),
                  SizedBox(
                    height: 20,
                  ),
                  MadingKontak(),
                  SizedBox(
                    height: 10,
                  ),
                  TextMading(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
