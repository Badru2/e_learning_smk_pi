import 'package:e_learning_smk_pi/widgets/my_border.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../../login/login_screen.dart';

class LogOutProfile extends StatefulWidget {
  const LogOutProfile({super.key});

  @override
  State<LogOutProfile> createState() => _LogOutProfileState();
}

class _LogOutProfileState extends State<LogOutProfile> {
  @override
  Widget build(BuildContext context) {
    return
        //  Container(
        //   child: showDialog(
        //     context: context,
        //     builder: (context) => AlertDialog(
        //       title: Text('LogOut'),
        //       actions: <Widget>[
        //         ElevatedButton(
        //           onPressed: () {},
        //           child: Text('LogOut'),
        //         )
        //       ],
        //     ),
        //   ),
        // );
        Container(
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
        onPressed: () => FirebaseAuth.instance.signOut(),
      ),
    );
  }
}
