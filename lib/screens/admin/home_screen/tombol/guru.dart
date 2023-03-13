import 'package:e_learning_smk_pi/screens/admin/guru_screen/guru_screen.dart';
import 'package:e_learning_smk_pi/screens/admin/login/login_screen.dart';
import 'package:e_learning_smk_pi/widgets/my_font.dart';
import 'package:e_learning_smk_pi/widgets/my_icons.dart';
import 'package:e_learning_smk_pi/widgets/sidebar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Guru extends StatelessWidget {
  const Guru({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 210,
      width: MediaQuery.of(context).size.width * 0.3,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF400986),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20))),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const SideBarAdmin()),
          );
        },
        child: Container(
          margin: const EdgeInsets.all(10),
          child: Stack(
            children: [
              Positioned(
                  bottom: 0,
                  right: 0,
                  child: SizedBox(
                      width: 130,
                      height: 150,
                      child: SvgPicture.asset(iconSiswa))),
              Column(
                children: const [
                  ListTile(
                    dense: false,
                    contentPadding: EdgeInsets.zero,
                    title: Text(
                      'Jumlah Guru',
                      style: font35w6w,
                    ),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text(
                      '75',
                      style: font50w6w,
                    ),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text(
                      'Lihat detail >>',
                      style: font15w6w,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
