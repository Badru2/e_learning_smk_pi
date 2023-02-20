import 'package:flutter/material.dart';

class JenisKelamin extends StatefulWidget {
  const JenisKelamin({super.key});

  @override
  State<JenisKelamin> createState() => _JenisKelaminState();
}

class _JenisKelaminState extends State<JenisKelamin> {
  String? kelamin;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RadioListTile(
          activeColor: Colors.black,
          contentPadding: EdgeInsets.zero,
          dense: true,
          visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
          title: const Text("Laki-Laki"),
          value: "Laki-Laki",
          groupValue: kelamin,
          onChanged: (value) {
            setState(() {
              kelamin = value.toString();
            });
          },
        ),
        RadioListTile(
          activeColor: Colors.black,
          contentPadding: EdgeInsets.zero,
          dense: true,
          visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
          title: const Text("Perempuan"),
          value: "Perempuan",
          groupValue: kelamin,
          onChanged: (value) {
            setState(() {
              kelamin = value.toString();
            });
          },
        ),
      ],
    );
  }
}
