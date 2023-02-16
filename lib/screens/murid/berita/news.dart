import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class GambarNewsMading extends StatelessWidget {
  const GambarNewsMading({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.9,
      // height: 98,
      // height: MediaQuery.of(context).size.height * 0.9,
      child: Image.asset(
        'assets/image/image 13.png',
        fit: BoxFit.cover,
      ),
    );
  }
}
