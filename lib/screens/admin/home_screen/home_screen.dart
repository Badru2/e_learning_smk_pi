import 'package:e_learning_smk_pi/screens/admin/home_screen/tombol/belum_konfirmasi.dart';
import 'package:e_learning_smk_pi/screens/admin/home_screen/tombol/guru.dart';
import 'package:e_learning_smk_pi/screens/admin/home_screen/tombol/siswa.dart';
import 'package:e_learning_smk_pi/screens/admin/home_screen/tombol/laporan_bug.dart';
import 'package:e_learning_smk_pi/screens/admin/sidebar_admin.dart';
import 'package:e_learning_smk_pi/widgets/appbar_admin.dart';
import 'package:flutter/material.dart';

class HomeScreenAdmin extends StatelessWidget {
  const HomeScreenAdmin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // route: '/HomeScreenAdmin',
      appBar: AppbarAdmin(),
      body: Container(
        margin: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 60),
              Row(
                children: const [
                  Siswa(),
                  SizedBox(width: 20),
                  Guru(),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: const [
                  BelumKonfirmasi(),
                  SizedBox(width: 20),
                  LaporanBug(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
