import 'package:e_learning_smk_pi/screens/text_atas_e-learning.dart';
import 'package:e_learning_smk_pi/widgets/circle.dart';
import 'package:e_learning_smk_pi/widgets/usernamelogin.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              Stack(
                children: [
                  const Positioned(
                    left: 0,
                    bottom: 30,
                    child: CircleLoginSedang(),
                  ),
                  const Positioned(
                    right: 0,
                    top: 70,
                    child: CircleLoginBiruGelap(),
                  ),
                  // const Positioned(
                  //   left: 70,
                  //   top: 250,
                  //   child: CircleLoginKecil(),
                  // ),
                  Center(
                    child: FractionallySizedBox(
                      widthFactor: 0.7,
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            child: Image.asset('assets/image/image 1.png'),
                          ),
                          const SizedBox(
                            height: 28,
                          ),
                          const TextAtasLogin(),
                          const SizedBox(
                            height: 45.0,
                          ),
                          const UserNameLogin(),
                          const SizedBox(
                            height: 34,
                          ),
                          const UserNameLogin(),
                          const SizedBox(
                            height: 70,
                          ),
                          const UserNameLogin(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
