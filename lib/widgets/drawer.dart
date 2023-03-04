import 'package:e_learning_smk_pi/screens/murid/homescreen/widgets/lapor_bug.dart';
import 'package:e_learning_smk_pi/screens/murid/login/sign_up/isi_profile.dart';
import 'package:e_learning_smk_pi/screens/murid/login/sign_up/test.dart';
import 'package:e_learning_smk_pi/screens/murid/login/sign_up/testread.dart';
import 'package:e_learning_smk_pi/widgets/my_font.dart';
import 'package:e_learning_smk_pi/widgets/my_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.of(context).size.width,
      child: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.arrow_back_ios_new_outlined),
            title: const Text(
              'Setelan',
              style: TextStyle(
                fontFamily: 'Outfit',
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            leading: SvgPicture.asset(iconWarning),
            title: const Text(
              'Laporan Bug',
              style: textDrawer,
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const LaporBug()));
            },
          ),
          ListTile(
            leading: SvgPicture.asset(iconAlert),
            title: const Text(
              'Tentang',
              style: textDrawer,
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Test()));
            },
          ),
          ListTile(
            leading: SvgPicture.asset(iconPersonGear, height: 30),
            title: const Text(
              'Kelola Akun',
              style: textDrawer,
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Test()));
            },
          ),
        ],
      ),
    );
  }
}
