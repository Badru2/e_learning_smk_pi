import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextAtasLogin extends StatelessWidget {
  const TextAtasLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.4,
          // height: 71,
          alignment: Alignment.center,
          child: Text('E-LEARNING SMK PI',
              textAlign: TextAlign.center,
              style: GoogleFonts.outfit(
                fontSize: 22,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              )),
        ),
        const SizedBox(
          height: 23,
        ),
        const SizedBox(
          width: 290,
          // height: 69,
          child: Text(
            'Selamat datang di E-Learning SMK PI, silah kan masukan nomor siswa dan password yang telah diberikan untuk login ',
            style: TextStyle(
              fontFamily: "Outfit",
              fontSize: 14.0,
              fontWeight: FontWeight.w400,
              color: Colors.black,
            ),
          ),
        )
      ],
    );
  }
}
