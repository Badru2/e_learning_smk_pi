import 'package:e_learning_smk_pi/screens/daftar_ekskul/daftar_ekskul.dart';
import 'package:e_learning_smk_pi/widgets/my_font.dart';
import 'package:e_learning_smk_pi/widgets/my_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class KumpulanTombol extends StatelessWidget {
  const KumpulanTombol({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: const LinearGradient(colors: [
                Color(0xFF13005A),
                Color(0xFF2A39D6),
              ])),
          width: 110,
          height: 110,
          child: const TugasHomeScreen(),
        ),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: const LinearGradient(colors: [
                Color(0xFF13005A),
                Color(0xFF2A39D6),
              ])),
          width: 110,
          height: 110,
          child: const AbsenHomeScreen(),
        ),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: const LinearGradient(colors: [
                Color(0xFF13005A),
                Color(0xFF2A39D6),
              ])),
          width: 110,
          height: 110,
          child: const EkstrakulikulerHomeScreen(),
        ),
      ],
    );
  }
}

class TugasHomeScreen extends StatelessWidget {
  const TugasHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              // backgroundColor: Color(0xFF2B2E4D),
              // shadowColor: Color(0xFF13005A),
              backgroundColor: Colors.transparent,
              shadowColor: Colors.transparent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),

              // onPressed: () {},
            ),
            onPressed: () {},
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  child: SvgPicture.asset(iconNoteBook),
                ),
                const SizedBox(
                  height: 11,
                ),
                const SizedBox(
                  child: Text(
                    'Tugas',
                    style: font20w6,
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          right: 7,
          top: 6,
          child: Container(
            height: 28,
            width: 28,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: const Color(0xFFEEE84F),
            ),
            child: const Center(
              child: Text(
                '2',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 19,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Outfit'),
              ),
            ),
          ),
        )
      ],
    );
  }
}

class AbsenHomeScreen extends StatelessWidget {
  const AbsenHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        // backgroundColor: MaterialStateProperty.all(Color(0xFF2B2E4D)),
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        // onPressed: () {},
      ),
      onPressed: () {},
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            child: SvgPicture.asset(iconAbsen),
          ),
          const SizedBox(
            height: 11,
          ),
          const SizedBox(
            child: Text(
              'Absen',
              style: font20w6,
            ),
          ),
        ],
      ),
    );
  }
}

class EkstrakulikulerHomeScreen extends StatelessWidget {
  const EkstrakulikulerHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent, shadowColor: Colors.transparent,
          // onPressed: () {},
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => DaftarEkskul()),
          );
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              child: SvgPicture.asset(iconEkskul),
            ),
            const SizedBox(
              height: 11,
            ),
            const SizedBox(
              child: Text(
                'Ekskul',
                style: font20w6,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
