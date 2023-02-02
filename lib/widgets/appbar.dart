import 'package:e_learning_smk_pi/widgets/my_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppbarCustom extends StatelessWidget with PreferredSizeWidget {
  AppbarCustom({super.key});
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    var scaffoldKey = GlobalKey<ScaffoldState>();
    key:
    scaffoldKey;
    return AppBar(
      toolbarHeight: 70,
      backgroundColor: Colors.white,
      leading: Builder(
        builder: (BuildContext) {
          return IconButton(
            icon: SvgPicture.asset(iconSetting),
            // icon: Icon(
            //   Icons.settings,
            //   color: Colors.black,
            //   size: 40,
            // ),
            onPressed: () => Scaffold.of(context).openDrawer(),
            // ScaffoldKey.current(context).openDrawer();

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
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
