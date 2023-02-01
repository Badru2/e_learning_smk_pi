import 'package:flutter/material.dart';

class LombaMatematika1 extends StatelessWidget {
  const LombaMatematika1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 157,
      child: Stack(
        children: <Widget>[
          Container(
            child: Image.asset('asset/image/Rectangle37'),
          ),
        ],
      ),
    );
  }
}
