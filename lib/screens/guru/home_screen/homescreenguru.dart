import 'package:e_learning_smk_pi/screens/murid/homescreen/widgets/bacamading_screen.dart';
import 'package:e_learning_smk_pi/screens/murid/homescreen/widgets/carousel_iklan.dart';
import 'package:e_learning_smk_pi/screens/murid/homescreen/widgets/e_mading_dua.dart';
import 'package:e_learning_smk_pi/screens/murid/homescreen/widgets/e_mading_satu.dart';
import 'package:e_learning_smk_pi/widgets/appbar.dart';
import 'package:e_learning_smk_pi/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomeScreenGuru extends StatelessWidget {
  const HomeScreenGuru({super.key});

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
                'Giri!',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Outfit',
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
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.only(
                right: 10,
                left: 10,
              ),
              child: Column(
                children: const <Widget>[
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
    );
  }
}
