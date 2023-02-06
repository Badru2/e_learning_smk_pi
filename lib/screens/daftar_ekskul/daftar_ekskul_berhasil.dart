import 'package:e_learning_smk_pi/widgets/appbar_back.dart';
import 'package:e_learning_smk_pi/widgets/my_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DaftarEkskulBerhasil extends StatelessWidget {
  const DaftarEkskulBerhasil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarBack(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: SvgPicture.asset(iconChecklist),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 350,
              child: Text(
                'Kamu telah daftar Ekstrakulikuler:) Nanti Kamu akan dihubungu Guru bersangkutan',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF00FF4A),
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
