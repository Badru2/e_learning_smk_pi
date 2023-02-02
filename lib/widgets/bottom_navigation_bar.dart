import 'package:e_learning_smk_pi/widgets/my_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavigatonBarCustom extends StatelessWidget {
  const BottomNavigatonBarCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF2A39D6), Color(0xFF270A93)],
          begin: Alignment.topLeft,
          end: Alignment.topRight,
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
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.transparent,
          currentIndex: 0,
          iconSize: 20.0,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                iconHome,
                height: 30,
                color: Colors.blue,
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
          unselectedItemColor: Colors.white,
        ),
      ),
    );
  }
}
