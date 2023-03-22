import 'package:e_learning_smk_pi/screens/guru/profile/widget/card_profile_guru.dart';
import 'package:e_learning_smk_pi/screens/guru/profile/widget/data_profile.dart';
import 'package:e_learning_smk_pi/screens/guru/profile/widget/logout.dart';
import 'package:e_learning_smk_pi/screens/murid/profile/profile_background.dart';
import 'package:e_learning_smk_pi/screens/murid/profile/widgets/data_profile.dart';
import 'package:e_learning_smk_pi/screens/murid/profile/widgets/logout.dart';
import 'package:e_learning_smk_pi/screens/murid/profile/widgets/profile_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ProfileScreenGuru extends StatefulWidget {
  const ProfileScreenGuru({super.key});

  @override
  State<ProfileScreenGuru> createState() => _ProfileScreenGuruState();
}

class _ProfileScreenGuruState extends State<ProfileScreenGuru> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            const ProfileBackground(),
            Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.08,
                    ),
                    const SizedBox(
                      child: Text(
                        'Profil',
                        style: TextStyle(
                          // fontFamily: 'Outfit',
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const CardProfileGuru(),
                    const SizedBox(
                      height: 30,
                    ),
                    const DataProfileGuru(),
                    const SizedBox(
                      height: 30,
                    ),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: LogOutGuru(),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
