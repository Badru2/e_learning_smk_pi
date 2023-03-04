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
      // [boxShadow] bayangan yang diambil dari file "my_border.dart"
      decoration: const BoxDecoration(boxShadow: [boxShadows]),
      child: ElevatedButton(
        //// desain tombol -->
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFFE03838),
          padding:
              const EdgeInsets.only(left: 30, right: 30, top: 15, bottom: 15),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ),
        //// desain tombol <--
        child: const Text(
          'Log Out',
          style: TextStyle(
            fontFamily: 'Outfit',
            fontSize: 19,
            fontWeight: FontWeight.w600,
          ),
        ),
        onPressed: () {
          //// Pop up alert saat tekan tombol -->
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: const Center(
                child: Text(
                  'Apakah Anda Yakin Ingin Keluar?',
                  style: font12w5,
                ),
              ),
              titlePadding: const EdgeInsets.only(top: 10, bottom: 20),
              insetPadding: EdgeInsets.zero,
              actionsAlignment: MainAxisAlignment.spaceAround,
              actions: [
                //// Tombol batal -->
                TextButton(
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                      Color(0xFFFF0000),
                    ),
                  ),
                  onPressed: () => Navigator.pop(context),
                  child: const Text(
                    'Tidak',
                    // font12w5 diambil buat textStyle dari file "my_font.dart"
                    style: font12w5,
                  ),
                ),
                //// Tombol batal <--
                /// Tombol Iya -->
                TextButton(
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                      Color(0xFF00FF38),
                    ),
                  ),
                  //// Perintah Kosong -->
                  // onPressed: () {}
                  //// Perintah Kosong <--
                  onPressed: () async {
                    //// Perintah Backend buat logOut -->
                    Navigator.pop(context);
                    await FirebaseAuth.instance.signOut();
                    //// Perintah Backend buat logOut <--
                  },
                  child: const Text(
                    'Iya',
                    style: font12w5,
                  ),
                ),
                //// Tombol Iya <--
              ],
            ),
          );
          //// Pop up alert saat tekan tombol <--
        },
      ),
    );
  }
}
