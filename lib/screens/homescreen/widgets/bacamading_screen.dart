import 'package:e_learning_smk_pi/screens/berita/berita.dart';
import 'package:flutter/material.dart';

class BacaMading extends StatelessWidget {
  const BacaMading({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 88,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
        border: Border.all(
          color: Colors.black,
          width: 3,
          style: BorderStyle.solid,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.5,
            child: const Text(
              'Baca berita Lainnya DiSini',
              style: TextStyle(
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w500,
                  fontSize: 20),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BagianEMading()),
              );
            },
            child: const Text(
              'Baca Mading',
            ),
          )
        ],
      ),
    );
  }
}
