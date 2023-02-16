import 'package:flutter/material.dart';

class LinePelajaran extends StatelessWidget {
  const LinePelajaran({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 2,
      color: Colors.black,
    );
  }
}

class LineFullWidth extends StatelessWidget {
  const LineFullWidth({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 1,
      color: Colors.black,
    );
  }
}
