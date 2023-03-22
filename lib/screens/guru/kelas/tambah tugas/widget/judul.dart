import 'package:e_learning_smk_pi/widgets/my_border.dart';
import 'package:e_learning_smk_pi/widgets/my_font.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class JudulTugasGuru extends StatelessWidget {
  const JudulTugasGuru({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Colors.black,
      decoration: const InputDecoration(
        hintText: 'Judul Tugas',
        hintStyle: font20w6b,
        contentPadding: EdgeInsets.only(left: 20, bottom: 5),
        enabledBorder: UnderlineInputBorder(),
        focusedBorder: UnderlineInputBorder(),
      ),
    );
  }
}
