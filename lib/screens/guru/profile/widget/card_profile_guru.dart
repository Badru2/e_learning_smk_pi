import 'package:e_learning_smk_pi/widgets/my_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CardProfileGuru extends StatelessWidget {
  const CardProfileGuru({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        //// Ukuran card -->
        width: MediaQuery.of(context).size.width * 0.8,
        height: MediaQuery.of(context).size.height * 0.3,
        //// Ukuran card <--

        /// desain card -->
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          // boxShadows diambil dari file "my_border.dart"
          boxShadow: const [boxShadows],
        ),

        /// desain card <--

        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              child: Image.asset(
                'assets/image/Group.png',
                scale: 3.5,
              ),
            ),
            const SizedBox(
              child: Text(
                'lis',
                style: TextStyle(
                  fontFamily: 'Outfit',
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(
              child: Text(
                '08414812481248',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
