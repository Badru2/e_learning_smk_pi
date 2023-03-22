import 'package:e_learning_smk_pi/screens/guru/login/sign_in/login_screen.dart';
import 'package:e_learning_smk_pi/screens/guru/login/sign_up/isi_profile_guru.dart';
import 'package:e_learning_smk_pi/screens/guru/login/sign_up/mata_pelajaran.dart';
import 'package:e_learning_smk_pi/widgets/my_border.dart';
import 'package:e_learning_smk_pi/widgets/my_font.dart';
import 'package:flutter/material.dart';

class SignUpGuru extends StatefulWidget {
  const SignUpGuru({super.key});

  @override
  State<SignUpGuru> createState() => _SignUpGuruState();
}

class _SignUpGuruState extends State<SignUpGuru> {
  var _sembunyi = true;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.7,
              child: Form(
                key: formKey,
                child: Column(
                  children: <Widget>[
                    const SizedBox(height: 50),
                    SizedBox(
                      child: Image.asset('assets/image/image 1.png'),
                    ),
                    const SizedBox(height: 10),
                    const SizedBox(
                      width: 200,
                      child: Text(
                        "E-LEARNING SMK PI",
                        style: font22w7b,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: 100),
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
                          enabledBorder: enabledBorderB2,
                          focusedBorder: focusedBorderB2,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: const BorderSide(color: Colors.black),
                          ),
                          labelText: 'Masukan Email',
                          hintStyle: const TextStyle(
                            fontFamily: "Outfit",
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
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
                      cursorColor: Colors.black,
                      obscuringCharacter: "*",
                      decoration: InputDecoration(
                        enabledBorder: enabledBorderB2,
                        focusedBorder: focusedBorderB2,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Colors.black,
                            width: 2,
                          ),
                        ),
                        labelText: 'Password',
                        labelStyle: font16w4,
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
                    const SizedBox(height: 10),
                    const MataPelajaranSignUp(),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginScreenGuru()),
                          );
                        },
                        child: const Text(
                          'Sudah Punya Akun?',
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF13005A),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const IsiProfileGuru(),
                            ));
                      },
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
                    const SizedBox(height: 100),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
