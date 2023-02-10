import 'package:e_learning_smk_pi/screens/homescreen/widgets/bacamading_screen.dart';
import 'package:e_learning_smk_pi/screens/homescreen/widgets/ekskul2.dart';
import 'package:e_learning_smk_pi/screens/homescreen/widgets/carousel_iklan.dart';
import 'package:e_learning_smk_pi/screens/homescreen/widgets/e_mading_satu.dart';
import 'package:e_learning_smk_pi/screens/homescreen/widgets/ekskul1.dart';
import 'package:e_learning_smk_pi/screens/homescreen/widgets/kumpulan_tombol.dart';
import 'package:e_learning_smk_pi/screens/homescreen/widgets/e_mading_dua.dart';
import 'package:e_learning_smk_pi/widgets/appbar.dart';
import 'package:e_learning_smk_pi/widgets/bottom_navigation_bar.dart';
import 'package:e_learning_smk_pi/widgets/drawer.dart';
import 'package:e_learning_smk_pi/widgets/navbar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      appBar: AppbarCustom(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 9,
            ),
            const ListTile(
              title: Text(
                'Selamat datang',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Outfit',
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
              ),
              subtitle: Text(
                'Hilal Badru!',
                style: TextStyle(
                  color: Colors.black,
                  // fontFamily: 'Outfit',
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            const CarouselHomeScreen(),
            const SizedBox(
              height: 50,
            ),
            Container(
              margin: const EdgeInsets.only(
                right: 10,
                left: 10,
              ),
              child: Column(
                children: const <Widget>[
                  KumpulanTombol(),
                  SizedBox(
                    height: 20,
                  ),
                  ListTile(
                    title: Text(
                      'Ekstrakulikuler',
                      style: TextStyle(
                        fontFamily: 'Outfit',
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  EkskulSatu(),
                  SizedBox(
                    height: 20,
                  ),
                  EkskulDua(),
                  SizedBox(
                    height: 20,
                  ),
                  ListTile(
                    title: Text(
                      'E-Mading',
                      style: TextStyle(
                        fontFamily: 'Outfit',
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  EmadingSatu(),
                  SizedBox(
                    height: 20,
                  ),
                  EmadingDua(),
                  SizedBox(
                    height: 20,
                  ),
                  BacaMading(),
                ],
              ),
            ),
          ],
        ),
      ),
      // bottomNavigationBar: Navbar(),
    );
  }
}
