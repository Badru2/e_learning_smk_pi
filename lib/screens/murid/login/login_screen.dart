import 'package:e_learning_smk_pi/main.dart';
import 'package:e_learning_smk_pi/screens/murid/login/sign_in/circle.dart';
import 'package:e_learning_smk_pi/screens/murid/login/sign_in/text_atas_e-learning.dart';
import 'package:e_learning_smk_pi/screens/murid/login/sign_up/sign_up.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  final VoidCallback onClickedSignUp;

  const LoginScreen({
    Key? key,
    required this.onClickedSignUp,
  }) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var _sembunyi = true;

  void iniState() {
    super.initState();
  }

  final emailController = TextEditingController();
  final formKey = GlobalKey<FormState>();
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
                      child: Form(
                        key: formKey,
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
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "Masukan Email";
                                  }
                                },
                                textInputAction: TextInputAction.next,
                                cursorColor: Colors.black,
                                controller: emailController,
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                    borderSide: BorderSide(color: Colors.black),
                                  ),
                                  labelText: 'Masukan Email',
                                  labelStyle: GoogleFonts.outfit(
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
                            TextFormField(
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              // validator: (value) =>
                              //     value != null && value.length < 6
                              //         ? 'Minimal 6 Karakter'
                              //         : null,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Masukan Password";
                                } else if (value.length < 6) {
                                  return "Minimal 6 Karakter";
                                }
                              },
                              textInputAction: TextInputAction.go,
                              controller: passwordController,
                              obscureText: _sembunyi,
                              onChanged: ((value) {}),
                              obscuringCharacter: "*",
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                labelText: 'Password',
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
                            // Container(
                            //   alignment: Alignment.centerLeft,
                            //   child: TextButton(
                            //     onPressed: () {
                            //       Navigator.push(
                            //         context,
                            //         MaterialPageRoute(
                            //             builder: (context) => const SignUp()),
                            //       );
                            //     },
                            //     child: const Text(
                            //       'Belum Punya Akun?',
                            //       style: TextStyle(
                            //         fontSize: 10,
                            //         fontWeight: FontWeight.w400,
                            //       ),
                            //     ),
                            //   ),
                            // ),
                            Container(
                              margin: EdgeInsets.only(top: 10, left: 5),
                              alignment: Alignment.centerLeft,
                              child: RichText(
                                  text: TextSpan(
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = widget.onClickedSignUp,
                                      text: 'Belum Punya Akun?',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.blue,
                                      ))),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xFF13005A),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              onPressed: signIn,
                              child: const Center(
                                child: Padding(
                                  padding: EdgeInsets.all(13.0),
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
                            ),
                          ],
                        ),
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
    final isValid = formKey.currentState!.validate();
    if (!isValid) return;

    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => const Center(
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
}
