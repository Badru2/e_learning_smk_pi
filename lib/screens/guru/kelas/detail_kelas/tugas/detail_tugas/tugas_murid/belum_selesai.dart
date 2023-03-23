import 'package:e_learning_smk_pi/widgets/my_font.dart';
import 'package:e_learning_smk_pi/widgets/my_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class BelumSelesai extends StatelessWidget {
  const BelumSelesai({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const LineBerita(),
        Container(
          alignment: Alignment.centerLeft,
          child: const Text(
            'Belum Selesai',
            style: font20w6b,
          ),
        ),
        const SizedBox(height: 20),
        Container(
          alignment: Alignment.centerLeft,
          child: TextButton(
            onPressed: () {},
            child: const Text(
              'Mochamad Khalif Habibi',
              style: font20w6b,
            ),
          ),
        )
      ],
    );
  }
}
