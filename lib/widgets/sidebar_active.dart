import 'package:e_learning_smk_pi/screens/admin/guru_screen/guru_screen.dart';
import 'package:e_learning_smk_pi/screens/admin/home_screen/home_screen.dart';
import 'package:e_learning_smk_pi/screens/admin/home_screen/lapor_bug.dart';
import 'package:e_learning_smk_pi/screens/admin/jadwal_screen/edit_jadwal.dart';
import 'package:e_learning_smk_pi/screens/admin/kelas/detail_kelas.dart';
import 'package:e_learning_smk_pi/screens/admin/siswa_screen/siswa_screen.dart';
import 'package:e_learning_smk_pi/screens/admin/tambah_berita/tambah_berita_screen.dart';
import 'package:e_learning_smk_pi/widgets/sidebar.dart';
import 'package:flutter/material.dart';
import 'package:sidebarx/sidebarx.dart';

class SideBarActive extends StatefulWidget {
  const SideBarActive({super.key});

  @override
  State<SideBarActive> createState() => _SideBarActiveState();
}

class _SideBarActiveState extends State<SideBarActive> {
  final _controller = SidebarXController(selectedIndex: 1, extended: true);
  final _key = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      body: Row(
        children: [
          SideBar(controller: _controller),
          Expanded(
            child: AllScreenSiswa(
              controller: _controller,
            ),
          )
        ],
      ),
    );
  }
}

class AllScreenSiswa extends StatelessWidget {
  const AllScreenSiswa({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final SidebarXController controller;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        // final pageTitle = _getTitleByIndex(controller.selectedIndex);
        switch (controller.selectedIndex) {
          case 0:
            return const HomeScreenAdmin();
          case 1:
            return const SiswaScreenAdmin();
          case 2:
            return const GuruScreenAdmin();
          case 3:
            return const DetailKelasAdmin();
          case 4:
            return const EditJadwalAdmin();
          case 5:
            return const TambahBeritaScreen();
          default:
            return Text('');
        }
      },
    );
  }
}
