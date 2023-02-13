import 'package:e_learning_smk_pi/widgets/my_font.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DetailMateri extends StatelessWidget {
  const DetailMateri({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          'Matematika',
          style: TextStyle(
            fontFamily: 'Outfit',
            fontSize: 30,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        toolbarHeight: 60,
      ),
      body: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.95,
          child: Column(
            children: [
              ListTile(
                title: Text(
                  'Catatan :',
                  style: font20w6b,
                ),
              ),
              ListTile(
                title: Text(
                  'Silahkan pelajari dan tulis dibuku cataan kalian masing-masing materi berikut,pembahasanya akan disampaikan dalam pembelajaran tatap muka di kampus 2 nanti.',
                  style: font12w5,
                ),
              ),
              ListTile(
                title: Text(
                  'Materi :',
                  style: font20w6b,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
