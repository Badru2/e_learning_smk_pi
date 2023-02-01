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
              gradient: LinearGradient(colors: [
                Color(0xFF13005A),
                Color(0xFF2A39D6),
              ])),
          width: 110,
          height: 110,
          child: TugasHomeScreen(),
        ),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(colors: [
                Color(0xFF13005A),
                Color(0xFF2A39D6),
              ])),
          width: 110,
          height: 110,
          child: AbsenHomeScreen(),
        ),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(colors: [
                Color(0xFF13005A),
                Color(0xFF2A39D6),
              ])),
          width: 110,
          height: 110,
          child: EkstrakulikulerHomeScreen(),
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  child: SvgPicture.network(''),
                ),
                SizedBox(
                  height: 11,
                ),
                SizedBox(
                  child: Text(
                    'Tugas',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Outfit',
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
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
              color: Color(0xFFEEE84F),
            ),
            child: Center(
                child: Text(
              '2',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 19,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Outfit'),
            )),
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            child: Icon(Icons.menu_book),
          ),
          SizedBox(
            height: 11,
          ),
          SizedBox(
            child: Text(
              'Absen',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Outfit',
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
      style: ElevatedButton.styleFrom(
        // backgroundColor: MaterialStateProperty.all(Color(0xFF2B2E4D)),
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        // onPressed: () {},
      ),
      onPressed: () {},
    );
  }
}

class EkstrakulikulerHomeScreen extends StatelessWidget {
  const EkstrakulikulerHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            child: Icon(Icons.menu_book),
          ),
          SizedBox(
            height: 11,
          ),
          SizedBox(
            child: Text(
              'Ekstakulikuler',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Outfit',
                fontSize: 12.5,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.transparent, shadowColor: Colors.transparent,
        // onPressed: () {},
      ),
      onPressed: () {},
    );
  }
}
