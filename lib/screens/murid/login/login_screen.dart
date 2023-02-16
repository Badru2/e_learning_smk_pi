import 'package:e_learning_smk_pi/screens/murid/login/sign_in/button_submit.dart';
import 'package:e_learning_smk_pi/screens/murid/login/sign_in/circle.dart';
import 'package:e_learning_smk_pi/screens/murid/login/sign_in/passwordlogin.dart';
import 'package:e_learning_smk_pi/screens/murid/login/sign_in/text_atas_e-learning.dart';
import 'package:e_learning_smk_pi/screens/murid/login/sign_in/usernamelogin.dart';
import 'package:e_learning_smk_pi/screens/murid/login/sign_up/sign_up.dart';
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
                  Positioned(
                    left: 0,
                    // bottom: 30,
                    bottom: MediaQuery.of(context).size.width * 0.06,
                    child: const CircleLoginSedang(),
                  ),
                  Positioned(
                    right: 0,
                    top: MediaQuery.of(context).size.width * 0.06,
                    child: const CircleLoginBiruGelap(),
                  ),
                  Positioned(
                    left: MediaQuery.of(context).size.width * 0.16,
                    top: MediaQuery.of(context).size.width * 0.22,
                    child: const CircleLoginKecil(),
                  ),
                  Center(
                    child: FractionallySizedBox(
                      widthFactor: 0.7,
                      child: Column(
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
                          const Password1(),
                          Container(
                            alignment: Alignment.centerLeft,
                            child: TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const SignUp()),
                                  );
                                },
                                child: Text(
                                  'Belum Punya Akun?',
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                  ),
                                )),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const ButtonSubmitLogin(),
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
