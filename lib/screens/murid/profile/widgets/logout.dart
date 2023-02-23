import 'package:e_learning_smk_pi/widgets/my_border.dart';
import 'package:e_learning_smk_pi/widgets/my_font.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LogOutProfile extends StatefulWidget {
  const LogOutProfile({super.key});

  @override
  State<LogOutProfile> createState() => _LogOutProfileState();
}

class _LogOutProfileState extends State<LogOutProfile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(boxShadow: [boxShadows]),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFFE03838),
          padding:
              const EdgeInsets.only(left: 30, right: 30, top: 15, bottom: 15),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ),
        child: const Text(
          'Log Out',
          style: TextStyle(
            fontFamily: 'Outfit',
            fontSize: 19,
            fontWeight: FontWeight.w600,
          ),
        ),
        // onPressed: () => FirebaseAuth.instance.signOut(),
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: Center(
                child: Text(
                  'Apakah Anda Yakin Ingin Keluar?',
                  style: font12w5,
                ),
              ),
              // actionsPadding: EdgeInsets.zero,
              titlePadding: EdgeInsets.only(top: 10, bottom: 20),
              insetPadding: EdgeInsets.zero,
              actionsAlignment: MainAxisAlignment.spaceAround,
              actions: [
                TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                      Color(0xFFFF0000),
                    ),
                  ),
                  onPressed: () => Navigator.pop(context),
                  child: Text(
                    'Tidak',
                    style: font12w5,
                  ),
                ),
                TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                      Color(0xFF00FF38),
                    ),
                  ),
                  onPressed: () async {
                    Navigator.pop(context);
                    await FirebaseAuth.instance.signOut();
                  },
                  child: Text(
                    'Iya',
                    style: font12w5,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
