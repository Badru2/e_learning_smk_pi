import 'package:e_learning_smk_pi/widgets/sidebar.dart';
import 'package:flutter/material.dart';
import 'package:sidebarx/sidebarx.dart';

class SideBarActive extends StatefulWidget {
  const SideBarActive({super.key});

  @override
  State<SideBarActive> createState() => _SideBarActiveState();
}

class _SideBarActiveState extends State<SideBarActive> {
  final _controller = SidebarXController(selectedIndex: 3, extended: true);
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
            ),
          )
        ],
      ),
    );
  }
}
