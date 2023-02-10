import 'package:e_learning_smk_pi/screens/homescreen/homescreen.dart';
import 'package:e_learning_smk_pi/widgets/navbar.dart';
import 'package:flutter/material.dart';

class ButtonSubmitLogin extends StatelessWidget {
  const ButtonSubmitLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: const ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(
          Color(0xFF13005A),
        ),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Navbar()),
        );
      },
      child: const Center(
        child: Text(
          'LOGIN',
          style: TextStyle(
            color: Color(0xFFffffff),
            fontFamily: 'SemiBold',
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
