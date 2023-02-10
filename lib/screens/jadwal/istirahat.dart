import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Istirahat extends StatelessWidget {
  const Istirahat({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.35,
            color: Colors.black,
            height: 2,
          ),
          const SizedBox(
            width: 5,
          ),
          const Text(
            'Istirahat',
          ),
          const SizedBox(
            width: 5,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.35,
            color: Colors.black,
            height: 2,
          )
        ],
      ),
    );
  }
}
