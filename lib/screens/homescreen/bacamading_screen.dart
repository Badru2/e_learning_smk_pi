import 'package:flutter/material.dart';

class BacaMading extends StatelessWidget {
  const BacaMading({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 88,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
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
          Container(
            width: MediaQuery.of(context).size.width * 0.5,
            child: Text(
              'Baca berita Lainnya DiSini',
              style: TextStyle(
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w500,
                  fontSize: 20),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text(
              'Baca Mading',
            ),
          )
        ],
      ),
    );
  }
}
