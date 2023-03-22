import 'package:e_learning_smk_pi/screens/admin/guru_screen/guru_screen.dart';
import 'package:e_learning_smk_pi/screens/admin/home_screen/belum_konfirmasi.dart';
import 'package:e_learning_smk_pi/screens/admin/jadwal_screen/edit_jadwal.dart';
import 'package:e_learning_smk_pi/screens/admin/kelas/detail_kelas.dart';
import 'package:e_learning_smk_pi/screens/admin/siswa_screen/siswa_screen.dart';
import 'package:e_learning_smk_pi/screens/admin/tambah_berita/tambah_berita_screen.dart';
import 'package:flutter/material.dart';
import 'package:sidebarx/sidebarx.dart';

class SideBarAdmin extends StatefulWidget {
  const SideBarAdmin({super.key});

  @override
  State<SideBarAdmin> createState() => _SideBarAdminState();
}

class _SideBarAdminState extends State<SideBarAdmin> {
  final _controller = SidebarXController(selectedIndex: 0, extended: true);
  final _key = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      body: Row(
        children: [
          SideBar(controller: _controller),
          Expanded(
              child: AllScreen(
            controller: _controller,
          ))
        ],
      ),
    );
  }
}

class SideBar extends StatelessWidget {
  const SideBar({
    Key? key,
    required SidebarXController controller,
  })  : _controller = controller,
        super(key: key);

  final SidebarXController _controller;

  @override
  Widget build(BuildContext context) {
    return SidebarX(
      controller: _controller,
      theme: SidebarXTheme(
        margin: const EdgeInsets.fromLTRB(20, 10, 0, 10),
        decoration: const BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            topLeft: Radius.circular(10),
          ),
        ),
        textStyle: TextStyle(color: Colors.white.withOpacity(0.7)),
        selectedTextStyle: const TextStyle(color: Colors.black),
        itemTextPadding: const EdgeInsets.only(left: 30),
        selectedItemTextPadding: const EdgeInsets.only(left: 30),
        itemDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: const Color(0xFF13005A)),
        ),
        selectedItemDecoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(25),
            topLeft: Radius.circular(25),
          ),
          border: Border.all(
            color: Colors.grey.withOpacity(0.37),
          ),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.28),
              blurRadius: 30,
            ),
          ],
        ),
        iconTheme: IconThemeData(
          color: Colors.white.withOpacity(0.7),
          size: 20,
        ),
        selectedIconTheme: const IconThemeData(
          color: Colors.black,
          size: 20,
        ),
      ),
      extendedTheme: const SidebarXTheme(
        width: 240,
        decoration: BoxDecoration(
          color: Color(0xFF13005A),
        ),
      ),
      showToggleButton: false,
      items: [
        SidebarXItem(
          icon: Icons.home,
          label: 'Dashboard',
          onTap: () {
            debugPrint('Home');
          },
        ),
        const SidebarXItem(
          icon: Icons.search,
          label: 'Murid',
        ),
        const SidebarXItem(
          icon: Icons.people,
          label: 'Guru',
        ),
        const SidebarXItem(
          icon: Icons.favorite,
          label: 'Kelas',
        ),
        const SidebarXItem(
          iconWidget: FlutterLogo(size: 20),
          label: 'Jadwal',
        ),
        const SidebarXItem(
          iconWidget: FlutterLogo(size: 20),
          label: 'Tambah Berita',
        ),
      ],
    );
  }
}

class AllScreen extends StatelessWidget {
  const AllScreen({
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
        final pageTitle = _getTitleByIndex(controller.selectedIndex);
        switch (controller.selectedIndex) {
          case 0:
            return const BelumKonfirmasiAdmin();
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
            return Text(
              pageTitle,
              style: theme.textTheme.headlineSmall,
            );
        }
      },
    );
  }
}

String _getTitleByIndex(int index) {
  switch (index) {
    case 0:
      return 'Dashboard';
    case 1:
      return 'Murid';
    case 2:
      return 'Guru';
    case 3:
      return 'Kelas';
    case 4:
      return 'Jadwal';
    case 5:
      return 'Tambah Berita';
    default:
      return 'Not found page';
  }
}
