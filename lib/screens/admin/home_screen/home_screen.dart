import 'package:e_learning_smk_pi/screens/admin/home_screen/belum_konfirmasi.dart';
import 'package:e_learning_smk_pi/screens/admin/home_screen/guru.dart';
import 'package:e_learning_smk_pi/screens/admin/home_screen/laporan_bug.dart';
import 'package:e_learning_smk_pi/screens/admin/home_screen/siswa.dart';
import 'package:e_learning_smk_pi/widgets/my_font.dart';
import 'package:flutter/material.dart';

class HomeScreenAdmin extends StatelessWidget {
  const HomeScreenAdmin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 20,
        leadingWidth: 100,
        leading: Image.asset('assets/image/image 1.png', scale: 1.5),
        title: const Text('SMK PI', style: font30w7),
        toolbarHeight: 70,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.exit_to_app,
              color: Colors.red,
            ),
          ),
          const SizedBox(width: 20),
        ],
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
      ),
      body: Container(
        margin: const EdgeInsets.all(20),
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
            SizedBox(height: 20),
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
    );
  }
}
