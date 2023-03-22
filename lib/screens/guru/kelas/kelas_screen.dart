import 'package:e_learning_smk_pi/screens/guru/kelas/widget/pelajaran.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class KelasScreenGuru extends StatefulWidget {
  const KelasScreenGuru({super.key});

  @override
  State<KelasScreenGuru> createState() => _KelasScreenGuruState();
}

class _KelasScreenGuruState extends State<KelasScreenGuru> {
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
            PelajaranKelasGuru(),
            SizedBox(
              height: 20,
            ),
            // PelajaranKelas(),
          ],
        ),
      ),
    );
  }
}
