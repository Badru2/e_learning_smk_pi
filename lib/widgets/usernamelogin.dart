import 'package:flutter/material.dart';

class UserNameLogin extends StatelessWidget {
  const UserNameLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: TextFormField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: const BorderSide(width: 10)),
          hintText: 'No. Siswa',
          hintStyle: const TextStyle(
            fontFamily: "Outfit",
            fontWeight: FontWeight.w400,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
