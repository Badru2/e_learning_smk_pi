import 'package:e_learning_smk_pi/widgets/my_icons.dart';
import 'package:e_learning_smk_pi/widgets/navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppBarBack extends StatelessWidget with PreferredSizeWidget {
  const AppBarBack({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      leading: Builder(
        builder: (BuildContext) {
          return IconButton(
            icon: SvgPicture.asset(iconCross),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Navbar()),
              );
            },
            // tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
          );
        },
      ),
      title: const Text(
        'Gabung Kelas',
        style: TextStyle(color: Colors.black),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 20.0),
          child: GestureDetector(
            onTap: () {},
            child: Image.asset(
              'assets/image/image 1.png',
              scale: 1.7,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
