import 'package:flutter/material.dart';

class EkskulDua extends StatelessWidget {
  const EkskulDua({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          child: Image.asset('assets/image/Rectangle 30.png'),
        ),
        Positioned(
          right: 40,
          top: 47,
          child: Container(
            width: 153,
            height: 100,
            child: Padding(
              padding: EdgeInsets.only(
                top: 10,
                left: 15,
              ),
              child: Text(
                'Ayo Ikut Ekstrakulikuler Basket!',
                style: TextStyle(
                  fontFamily: 'Outif',
                  color: Color(0xFFffffff),
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: const Color(0xFF13005A).withOpacity(0.5),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
      ],
    );
  }
}
