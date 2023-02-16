import 'package:e_learning_smk_pi/screens/murid/profile/profile_background.dart';
import 'package:flutter/material.dart';
import 'widgets/data_profile.dart';
import 'widgets/logout.dart';
import 'widgets/profile_card.dart';

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
      // bottomNavigationBar: const BottomNavigationBarCustom(),
    );
  }
}
