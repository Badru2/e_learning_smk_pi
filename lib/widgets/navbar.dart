import 'package:e_learning_smk_pi/screens/murid/homescreen/homescreen.dart';
import 'package:e_learning_smk_pi/screens/murid/jadwal/jadwal_screen.dart';
import 'package:e_learning_smk_pi/screens/murid/kelas/kelas_screen.dart';
import 'package:e_learning_smk_pi/screens/murid/profile/profile_screen.dart';
import 'package:e_learning_smk_pi/widgets/my_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int selectIndex = 0;
  final _screens = [
    const HomeScreen(),
    const KelasScreens(),
    const JadwalScreen(),
    const ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[selectIndex],
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF2A39D6), Color(0xFF270A93)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.0, 0.8],
            tileMode: TileMode.clamp,
          ),
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(30), topLeft: Radius.circular(30)),
          boxShadow: [
            BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          child: BottomNavigationBar(
            backgroundColor: Colors.transparent,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: const Color(0xFF17D6E2),
            unselectedItemColor: Colors.white,
            unselectedIconTheme: const IconThemeData(color: Colors.white),
            selectedIconTheme: const IconThemeData(
              color: Color(0xFF17D6E2),
              size: 20.0,
            ),
            iconSize: 20.0,
            currentIndex: selectIndex,
            onTap: (index) {
              setState(() {
                selectIndex = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  iconHome,
                  height: 30,
                  color: Colors.white,
                ),
                label: 'Beranda',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  iconKelas,
                  height: 30,
                  color: Colors.white,
                ),
                label: 'Kelas',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  iconCalendar,
                  height: 30,
                  color: Colors.white,
                ),
                label: 'Jadwal',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  iconPerson,
                  height: 30,
                  color: Colors.white,
                ),
                label: 'Profil',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
