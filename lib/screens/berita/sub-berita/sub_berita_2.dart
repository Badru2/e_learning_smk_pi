import 'package:e_learning_smk_pi/widgets/my_font.dart';
import 'package:flutter/material.dart';

class BagianPpdbSatu extends StatelessWidget {
  const BagianPpdbSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        minimumSize: Size.zero, // Set this
        padding: EdgeInsets.zero, // and this
      ),
      child: Row(
        children: [
          Container(
            width: 140,
            height: 75,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(
                color: Colors.black,
                width: 2,
              ),
            ),
            child: Image.asset(
              'assets/image/Rectangle 110.png',
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            width: 14,
          ),
          Column(
            children: <Widget>[
              const Align(
                alignment: Alignment.centerLeft,
                child: SizedBox(
                  width: 200,
                  child: Text(
                    'SMK PI mulai membuka PPDB tahun 2023/2024',
                    maxLines: 2,
                    style: font15w6,
                  ),
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Row(
                children: const [
                  Text(
                    '30-01-2023',
                    style: TextStyle(
                      fontFamily: 'Outfit',
                      fontSize: 7,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    '|',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    'Pihak sekolah',
                    style: TextStyle(
                      fontFamily: 'Outfit',
                      fontSize: 7,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
