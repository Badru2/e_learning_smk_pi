import 'package:e_learning_smk_pi/main.dart';
import 'package:e_learning_smk_pi/widgets/my_font.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  var _sembunyi = true;

  void iniState() {
    super.initState();
  }

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

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
          child: Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: Form(
                key: formKey,
                child: Column(
                  children: [
                    SizedBox(height: 100),
                    SizedBox(
                      child: Image.asset('assets/image/image 1.png'),
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      width: 200,
                      child: Text(
                        "E-LEARNING SMK PI",
                        style: font22w7b,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(height: 100),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
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
                            borderSide: const BorderSide(color: Colors.black),
                          ),
                          hintText: 'Masukan Email',
                          hintStyle: const TextStyle(
                            fontFamily: "Outfit",
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 34),
                    TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      // validator: (value) => value != null && value.length < 6
                      //     ? 'Minimal 6 Karakter'
                      //     : null,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Masukan Password";
                        } else if (value.length < 6) {
                          return "Minimal 6 Karakter";
                        }
                      },
                      textInputAction: TextInputAction.done,
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
                    SizedBox(height: 70),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF13005A),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: signUp,
                      child: const Center(
                        child: Padding(
                          padding: EdgeInsets.all(13.0),
                          child: Text(
                            'DAFTAR',
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
        ),
      ),
    );
  }

  Future signUp() async {
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
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );
    } on FirebaseAuthException catch (e) {
      print(e);
    }

    navigatorKey.currentState!.popUntil((route) => route.isFirst);
  }
}
