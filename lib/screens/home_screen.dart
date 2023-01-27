import 'package:e_learning_smk_pi/screens/background_login.dart';
import 'package:e_learning_smk_pi/screens/text_atas_e-learning.dart';
import 'package:e_learning_smk_pi/widgets/circle.dart';
import 'package:e_learning_smk_pi/widgets/usernamelogin.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: Stack(
        children: [
          Positioned(
            left: 0,
            bottom: 190,
            child: CircleLoginSedang(),
          ),
          Positioned(
            right: 0,
            top: 150,
            child: CircleLoginBiruGelap(),
          ),
          Positioned(
            left: 70,
            top: 250,
            child: CircleLoginKecil(),
          ),
          Center(
            child: FractionallySizedBox(
              widthFactor: 0.7,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    child: Image.asset('assets/image/image 1.png'),
                  ),
                  SizedBox(
                    height: 28,
                  ),
                  TextAtasLogin(),
                  SizedBox(
                    height: 45.0,
                  ),
                  UserNameLogin(),
                  SizedBox(
                    height: 34,
                  ),
                  UserNameLogin(),
                  SizedBox(
                    height: 70,
                  ),
                  UserNameLogin(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
