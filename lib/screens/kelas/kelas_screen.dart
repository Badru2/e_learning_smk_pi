import 'package:e_learning_smk_pi/screens/ikut_kelas/ikut_kelas_screen.dart';
import 'package:e_learning_smk_pi/screens/kelas/pelajaran_kelas.dart';
import 'package:e_learning_smk_pi/widgets/my_font.dart';
import 'package:e_learning_smk_pi/widgets/my_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class KelasScreens extends StatefulWidget {
  const KelasScreens({super.key});

  @override
  State<KelasScreens> createState() => _KelasScreensState();
}

class _KelasScreensState extends State<KelasScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 70,
        automaticallyImplyLeading: false,
        title: const Text(
          'Kelas',
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
            fontFamily: 'Outfit',
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {},
              child: Image.asset(
                'assets/image/image 1.png',
                scale: 1.7,
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: const <Widget>[
            SizedBox(
              height: 20,
            ),
            PelajaranKelas(),
            SizedBox(
              height: 20,
            ),
            PelajaranKelas(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Container(
          width: 100,
          height: 100,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              colors: [
                Color(0xFF2A39D6),
                Color(0xFF13005A),
              ],
            ),
          ),
          child: const Icon(
            Icons.add,
            size: 30,
          ),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const IkutKelasScreen()),
          );
        },
        // label: Text('+'),
      ),
    );
  }
}
