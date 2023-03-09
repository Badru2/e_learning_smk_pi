import 'package:e_learning_smk_pi/widgets/my_font.dart';
import 'package:flutter/material.dart';

class AppbarAdmin extends StatelessWidget with PreferredSizeWidget {
  const AppbarAdmin({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      titleSpacing: 20,
      leadingWidth: 100,
      leading: Image.asset('assets/image/image 1.png', scale: 1.5),
      title: const Text('SMK PI', style: font30w7),
      toolbarHeight: 70,
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.exit_to_app,
            color: Colors.red,
          ),
        ),
        const SizedBox(width: 20),
      ],
      automaticallyImplyLeading: false,
      backgroundColor: Colors.white,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
