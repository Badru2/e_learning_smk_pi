import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserNameLogin extends StatelessWidget {
  const UserNameLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: TextFormField(
        // keyboardType: TextInputType.number,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            // borderSide: const BorderSide(width: 10),
          ),
          hintText: 'Masukan Email',
          hintStyle: GoogleFonts.outfit(
            // fontFamily: "Outfit",
            fontWeight: FontWeight.w400,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
