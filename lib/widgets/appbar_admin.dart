import 'package:e_learning_smk_pi/screens/admin/login/login_screen.dart';
import 'package:e_learning_smk_pi/widgets/my_font.dart';
import 'package:flutter/material.dart';

class AppbarAdmin extends StatelessWidget with PreferredSizeWidget {
  const AppbarAdmin({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      toolbarHeight: 80,
      leading: Image.asset('assets/image/image 1.png'),
      title: const Text(
        'SMK PI',
        style: font30w7,
      ),
      leadingWidth: 90,
      actions: [
        Container(
          margin: const EdgeInsets.only(top: 5, bottom: 5, right: 20),
          child: TextButton(
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
                      Container(
                        margin: EdgeInsets.only(left: 20, right: 20),
                        width: MediaQuery.of(context).size.width * 0.19,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              // width: MediaQuery.of(context).size.width * 0.125,
                              child: Container(
                                alignment: Alignment.centerLeft,
                                // width: 50,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    padding: const EdgeInsets.fromLTRB(
                                        30, 10, 30, 10),
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
                              alignment: Alignment.centerRight,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  padding:
                                      const EdgeInsets.fromLTRB(30, 10, 30, 10),
                                  backgroundColor: const Color(0xFF00CD2D),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const AdminLoginScreen(),
                                    ),
                                  );
                                },
                                child: const Text('Iya'),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              );
            },
            style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Color(0xFFEE1414)),
            ),
            child: const Icon(
              Icons.logout,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
