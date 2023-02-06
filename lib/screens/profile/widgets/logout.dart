import 'package:e_learning_smk_pi/screens/login/login_screen.dart';
import 'package:e_learning_smk_pi/widgets/my_border.dart';
import 'package:flutter/material.dart';

class LogOutProfile extends StatelessWidget {
  const LogOutProfile({super.key});

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
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const LoginScreen()),
          );
        },
      ),
    );
  }
}
