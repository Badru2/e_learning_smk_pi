import 'package:e_learning_smk_pi/screens/profile/widgets/circle_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProfileBackground extends StatelessWidget {
  const ProfileBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.3,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFF2A39D6),
                  Color(0xFF13005A),
                ],
              ),
              boxShadow: [
                BoxShadow(
                  offset: Offset(5.0, 5.0),
                  blurRadius: 10.0,
                  spreadRadius: 0,
                ),
              ],
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              )),
        ),
        const Positioned(
          right: 0,
          top: 0,
          child: CircleProfileAtas(),
        ),
        const Positioned(
          left: 0,
          bottom: 0,
          child: CircleProfileBawah(),
        ),
      ],
    );
  }
}
