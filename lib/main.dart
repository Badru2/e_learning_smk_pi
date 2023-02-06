import 'package:e_learning_smk_pi/screens/daftar_ekskul/daftar_ekskul.dart';
import 'package:e_learning_smk_pi/screens/daftar_ekskul/daftar_ekskul_berhasil.dart';
import 'package:e_learning_smk_pi/screens/homescreen/homescreen.dart';
import 'package:e_learning_smk_pi/screens/ikut_kelas/ikut_kelas_screen.dart';
import 'package:e_learning_smk_pi/screens/login/login_screen.dart';
import 'package:e_learning_smk_pi/screens/profile/profile_screen.dart';
import 'package:e_learning_smk_pi/screens/tugas/tugas_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E Learning SMK PI',
      // home: LoginScreen(),
      // home: HomeScreen(),
      // home: ProfileScreen(),
      // home: TugasScreen(),
      // home: IkutKelasScreen(),
      home: DaftarEkskul(),
      // home: DaftarEkskulBerhasil(),
    );
  }
}
