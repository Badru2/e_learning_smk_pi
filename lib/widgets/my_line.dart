import 'package:flutter/material.dart';

class LineBerita extends StatelessWidget {
  const LineBerita({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      color: Colors.black,
      height: 1,
      width: MediaQuery.of(context).size.width,
    );
  }
}
