import 'package:e_learning_smk_pi/widgets/my_font.dart';
import 'package:flutter/material.dart';

class BeritaPadus extends StatelessWidget {
  const BeritaPadus({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        minimumSize: Size.zero, // Set this
        padding: EdgeInsets.zero, // and this
      ),
      onPressed: () {},
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
              'assets/image/Rectangle 40.png',
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
                    'Juara Paduan Suara Sejawa barat!!',
                    maxLines: 2,
                    style: font15w6,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                margin: const EdgeInsets.only(right: 110),
                child: Row(
                  children: const <Widget>[
                    Icon(
                      Icons.access_time_outlined,
                      size: 10,
                    ),
                    Text(
                      '20-11-2022'
                      ' | '
                      'Osis SMK PI',
                      style: font7w5,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
