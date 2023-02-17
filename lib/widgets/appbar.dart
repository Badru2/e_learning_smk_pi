import 'package:e_learning_smk_pi/widgets/my_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppbarCustom extends StatelessWidget with PreferredSizeWidget {
  AppbarCustom({super.key});
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    var scaffoldKey = GlobalKey<ScaffoldState>();
    scaffoldKey;
    return AppBar(
      toolbarHeight: MediaQuery.of(context).size.height * 0.5,
      backgroundColor: Colors.white,
      leading: Builder(
        builder: (BuildContext) {
          return IconButton(
            icon: SvgPicture.asset(iconSetting),
            onPressed: () => Scaffold.of(context).openDrawer(),
            tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
          );
        },
      ),
      title: const Text(
        'E-Learning SMK PI',
        style: TextStyle(color: Colors.black),
      ),
      centerTitle: true,
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
