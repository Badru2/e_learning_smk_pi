import 'package:e_learning_smk_pi/screens/admin/login/login_screen.dart';
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
      toolbarHeight: 100,
      actions: [
        IconButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  titlePadding: const EdgeInsets.all(50),
                  actionsPadding: const EdgeInsets.only(bottom: 20, top: 40),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  actionsAlignment: MainAxisAlignment.spaceEvenly,
                  title: const Text(
                    'Apakah Anda Yakin Ingin Keluar?',
                    style: font20w6b,
                  ),
                  actions: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.125,
                      child: Container(
                        alignment: Alignment.centerLeft,
                        width: 50,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                            backgroundColor: const Color(0xFFE80F0F),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          onPressed: () => Navigator.pop(context),
                          child: const Text('Tidak'),
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.125,
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                            backgroundColor: const Color(0xFF00CD2D),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const AdminLoginScreen(),
                              ),
                            );
                          },
                          child: const Text('Iya'),
                        ),
                      ),
                    ),
                  ],
                );
              },
            );
          },
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
