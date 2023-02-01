import 'package:e_learning_smk_pi/screens/basket/bacaberita_screen.dart';
import 'package:e_learning_smk_pi/screens/basket/basket.dart';
import 'package:e_learning_smk_pi/screens/homescreen/carousel_iklan.dart';
import 'package:e_learning_smk_pi/screens/homescreen/ekskul1.dart';
import 'package:e_learning_smk_pi/screens/homescreen/kumpulan_tombol.dart';
import 'package:e_learning_smk_pi/screens/paduan/lomba_paduansuara.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: Colors.white,
        leading: Builder(
          builder: (BuildContext) {
            return IconButton(
              icon: Icon(
                Icons.settings,
                color: Colors.black,
                size: 40,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        title: const Text(
          'E-Learning SMK PI',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {},
              child: SvgPicture.asset(
                'assets/image/image 2.svg',
                // scale: 1.5,
              ),
            ),
          ),
        ],
      ),
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
                  EskulBasket(),
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
                  LombaPaduanSuara1(),
                  BacaBerita1(),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(30), topLeft: Radius.circular(30)),
          boxShadow: [
            BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Color(0xFF2A39D6),
            currentIndex: 0,
            iconSize: 40.0,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Beranda',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.book),
                label: 'Kelas',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.calendar_month),
                label: 'Jadwal',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profil',
              ),
            ],
            unselectedItemColor: Colors.white,
          ),
        ),
      ),
    );
  }
}
