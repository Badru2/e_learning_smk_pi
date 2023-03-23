import 'package:e_learning_smk_pi/widgets/my_font.dart';
import 'package:e_learning_smk_pi/widgets/my_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Instruksi extends StatelessWidget {
  const Instruksi({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        children: [
          const SizedBox(height: 10),
          SizedBox(
            width: screenSize.width,
            child: Container(
              alignment: Alignment.centerLeft,
              child: Row(
                children: const [
                  Text(
                    'Tenggat: ',
                    style: font12w6,
                  ),
                  Text(
                    '02-02-2023',
                    style: font12w6r,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
          Container(
            alignment: Alignment.centerLeft,
            child: const Text(
              'Persamaan Variable',
              style: font22w7b,
            ),
          ),
          const SizedBox(height: 10),
          Container(
            alignment: Alignment.centerLeft,
            child: const Text('100 Point'),
          ),
          const SizedBox(height: 5),
          const LineBerita(),
          const SizedBox(height: 15),
          Container(
            alignment: Alignment.centerLeft,
            child: const Text(
              'Silahkan kerjakan dibuku cataan kalian masing-masing ,pembahasanya akan disampaikan dalam pembelajaran tatap muka di kampus 2 nanti.',
              // style: font12w6,
            ),
          ),
          const SizedBox(height: 20),
          Container(
            alignment: Alignment.centerLeft,
            child: const Text(
              'Lampiran',
              style: font20w6b,
            ),
          ),
          const SizedBox(height: 10),
          Container(
            alignment: Alignment.centerLeft,
            child: TextButton(
              style: ElevatedButton.styleFrom(padding: EdgeInsets.zero),
              onPressed: () {},
              child: Image.asset('assets/image/image 6.png'),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: TextButton(
              style: ElevatedButton.styleFrom(padding: EdgeInsets.zero),
              onPressed: () {},
              child: Row(
                children: const [
                  Icon(
                    Icons.document_scanner,
                    color: Colors.red,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Tugas Deret Aritmatika.Pptx',
                    style: font15w6,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
