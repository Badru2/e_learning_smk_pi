import 'package:e_learning_smk_pi/main.dart';
import 'package:e_learning_smk_pi/screens/murid/login/sign_in/circle.dart';
import 'package:e_learning_smk_pi/screens/murid/login/sign_in/text_atas_e-learning.dart';
import 'package:e_learning_smk_pi/screens/murid/login/sign_up/sign_up.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var _sembunyi = true;

  void iniState() {
    super.initState();
  }

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();

    super.dispose();
  }

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
                          SizedBox(
                            width: MediaQuery.of(context).size.width,
                            child: TextFormField(
                              controller: emailController,
                              // keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                  // borderSide: const BorderSide(width: 10),
                                ),
                                hintText: 'Masukan Email',
                                hintStyle: GoogleFonts.outfit(
                                  // fontFamily: "Outfit",
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 34,
                          ),
                          Column(
                            children: [
                              TextFormField(
                                controller: passwordController,
                                obscureText: _sembunyi,
                                onChanged: ((value) {}),
                                obscuringCharacter: "*",
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  hintText: 'Password',
                                  suffixIcon: IconButton(
                                    icon: _sembunyi
                                        ? const Icon(Icons.visibility)
                                        : const Icon(Icons.visibility_off),
                                    onPressed: () {
                                      setState(() {
                                        _sembunyi = !_sembunyi;
                                      });
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
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
                                child: const Text(
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
                          ElevatedButton(
                            style: const ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll(
                                Color(0xFF13005A),
                              ),
                            ),
                            onPressed: signIn,
                            child: const Center(
                              child: Text(
                                'LOGIN',
                                style: TextStyle(
                                  color: Color(0xFFffffff),
                                  fontFamily: 'SemiBold',
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
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

  Future signIn() async {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => Center(
        child: CircularProgressIndicator(),
      ),
    );

    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );
    } on FirebaseAuthException catch (e) {
      print(e);
    }
    navigatorKey.currentState!.popUntil((route) => route.isFirst);
  }
  // Navigator.of(context) not working!
}
