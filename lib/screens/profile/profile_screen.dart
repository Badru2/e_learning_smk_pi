import 'package:e_learning_smk_pi/screens/profile/widgets/data_profile.dart';
import 'package:e_learning_smk_pi/screens/profile/widgets/logout.dart';
import 'package:e_learning_smk_pi/screens/profile/profile_background.dart';
import 'package:e_learning_smk_pi/screens/profile/widgets/profile_card.dart';
import 'package:e_learning_smk_pi/widgets/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            const ProfileBackground(),
            Center(
              child: Container(
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
                    const ProfileCard(),
                    const SizedBox(
                      height: 30,
                    ),
                    const DataProfile(),
                    const SizedBox(
                      height: 30,
                    ),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: LogOutProfile(),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavigatonBarCustom(),
    );
  }
}
