import 'dart:ui';

import 'package:e_learning_smk_pi/responsive.dart';
import 'package:e_learning_smk_pi/screens/admin/home_screen/home_screen.dart';
import 'package:e_learning_smk_pi/widgets/my_border.dart';
import 'package:e_learning_smk_pi/widgets/my_font.dart';
import 'package:e_learning_smk_pi/widgets/sidebar.dart';
import 'package:flutter/material.dart';

class AdminLoginScreen extends StatefulWidget {
  const AdminLoginScreen({super.key});

  @override
  State<AdminLoginScreen> createState() => _AdminLoginScreenState();
}

class _AdminLoginScreenState extends State<AdminLoginScreen> {
  var _sembunyi = true;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Stack(
      children: [
        Responsive(
          desktop: Scaffold(
            body: Stack(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: ExactAssetImage('assets/image/image 14.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  width: screenSize.width,
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                    child: Container(
                      decoration:
                          BoxDecoration(color: Colors.white.withOpacity(0.4)),
                    ),
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.1,
                  left: MediaQuery.of(context).size.width * 0.38,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.25,
                    height: MediaQuery.of(context).size.height * 0.6,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(17),
                      color: Colors.transparent,
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          bottom: 0,
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.25,
                            height: MediaQuery.of(context).size.height * 0.53,
                            decoration: BoxDecoration(
                              boxShadow: const [
                                BoxShadow(
                                  offset: Offset(1.0, 1.0),
                                  blurRadius: 1.0,
                                  spreadRadius: 0,
                                )
                              ],
                              borderRadius: BorderRadius.circular(17),
                              color: Colors.white,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const SizedBox(height: 70),
                                const SizedBox(
                                  width: 100,
                                  child: Text(
                                    'E-learning SMK PI',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.black),
                                  ),
                                ),
                                const SizedBox(height: 30),
                                //// ID -->
                                Container(
                                  margin: const EdgeInsets.only(
                                      left: 25, right: 25),
                                  width:
                                      MediaQuery.of(context).size.width * 0.5,
                                  child: TextFormField(
                                    textInputAction: TextInputAction.next,
                                    cursorColor: Colors.black,
                                    decoration: InputDecoration(
                                      label: const Text('ID'),
                                      focusedBorder: focusedBorderB,
                                      enabledBorder: enabledBorderB,
                                      labelStyle:
                                          const TextStyle(color: Colors.black),
                                    ),
                                  ),
                                ),
                                //// ID <--

                                const SizedBox(height: 30),

                                //// Password -->
                                Container(
                                  margin: const EdgeInsets.only(
                                      left: 25, right: 25),
                                  child: TextFormField(
                                    obscureText: _sembunyi,
                                    onChanged: ((value) {}),
                                    obscuringCharacter: "*",
                                    cursorColor: Colors.black,
                                    decoration: InputDecoration(
                                      enabledBorder: enabledBorderB,
                                      focusedBorder: focusedBorderB,
                                      labelStyle:
                                          const TextStyle(color: Colors.black),
                                      label: const Text('Password'),
                                      iconColor: Colors.black,
                                      suffixIcon: IconButton(
                                        color: Colors.black,
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
                                ),
                                //// Password <--

                                const SizedBox(height: 35),
                                Container(
                                  margin: const EdgeInsets.only(
                                      left: 25, right: 25),
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const SideBarAdmin(),
                                          ));
                                    },
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      fixedSize: Size.fromWidth(
                                          MediaQuery.of(context).size.width),
                                      backgroundColor: const Color(0xFF367CFF),
                                    ),
                                    child: const Text('Login'),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          left: MediaQuery.of(context).size.width * 0.085,
                          child: Stack(
                            children: [
                              Container(
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(
                                  boxShadow: const [
                                    BoxShadow(
                                      offset: Offset(1.0, 1.0),
                                      blurRadius: 1.0,
                                      spreadRadius: 0,
                                    )
                                  ],
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(100),
                                ),
                              ),
                              Positioned(
                                top: 12,
                                left: 13,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(
                                        'assets/image/image 1.png')),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          large: Scaffold(
            body: Stack(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: ExactAssetImage('assets/image/image 14.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  width: screenSize.width,
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                    child: Container(
                      decoration:
                          BoxDecoration(color: Colors.white.withOpacity(0.4)),
                    ),
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.1,
                  left: MediaQuery.of(context).size.width * 0.38,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.25,
                    height: MediaQuery.of(context).size.height * 0.6,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(17),
                      color: Colors.transparent,
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          bottom: 0,
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.25,
                            height: MediaQuery.of(context).size.height * 0.5,
                            decoration: BoxDecoration(
                              boxShadow: const [
                                BoxShadow(
                                  offset: Offset(1.0, 1.0),
                                  blurRadius: 1.0,
                                  spreadRadius: 0,
                                )
                              ],
                              borderRadius: BorderRadius.circular(17),
                              color: Colors.white,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const SizedBox(height: 70),
                                const SizedBox(
                                  width: 150,
                                  child: Text(
                                    'E-learning SMK PI',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 30, color: Colors.black),
                                  ),
                                ),
                                const SizedBox(height: 30),
                                //// ID -->
                                Container(
                                  margin: const EdgeInsets.only(
                                      left: 25, right: 25),
                                  width:
                                      MediaQuery.of(context).size.width * 0.5,
                                  child: TextFormField(
                                    textInputAction: TextInputAction.next,
                                    cursorColor: Colors.black,
                                    style: font22w7b,
                                    decoration: InputDecoration(
                                      label: const Text('ID'),
                                      focusedBorder: focusedBorderB,
                                      enabledBorder: enabledBorderB,
                                      contentPadding: const EdgeInsets.fromLTRB(
                                          20, 20, 0, 15),
                                      labelStyle:
                                          const TextStyle(color: Colors.black),
                                    ),
                                  ),
                                ),
                                //// ID <--

                                const SizedBox(height: 30),

                                //// Password -->
                                Container(
                                  margin: const EdgeInsets.only(
                                      left: 25, right: 25),
                                  child: TextFormField(
                                    style: font22w7b,
                                    obscureText: _sembunyi,
                                    onChanged: ((value) {}),
                                    obscuringCharacter: "*",
                                    cursorColor: Colors.black,
                                    decoration: InputDecoration(
                                      enabledBorder: enabledBorderB,
                                      focusedBorder: focusedBorderB,
                                      labelStyle:
                                          const TextStyle(color: Colors.black),
                                      label: const Text('Password'),
                                      iconColor: Colors.black,
                                      contentPadding: const EdgeInsets.fromLTRB(
                                          20, 20, 0, 15),
                                      suffixIcon: IconButton(
                                        color: Colors.black,
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
                                ),
                                //// Password <--

                                const SizedBox(height: 45),
                                Container(
                                  margin: const EdgeInsets.only(
                                      left: 25, right: 25),
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const SideBarAdmin(),
                                        ),
                                      );
                                    },
                                    style: ElevatedButton.styleFrom(
                                        fixedSize: Size(screenSize.width, 50),
                                        backgroundColor:
                                            const Color(0xFF367CFF),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10))),
                                    child: const Text(
                                      'Login',
                                      style: font20w6,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          left: MediaQuery.of(context).size.width * 0.09,
                          child: Stack(
                            children: [
                              Container(
                                width: 150,
                                height: 150,
                                decoration: BoxDecoration(
                                  boxShadow: const [
                                    BoxShadow(
                                      offset: Offset(1.0, 1.0),
                                      blurRadius: 1.0,
                                      spreadRadius: 0,
                                    )
                                  ],
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(100),
                                ),
                              ),
                              Positioned(
                                top: 14,
                                left: 15,
                                child: SizedBox(
                                  width: 120,
                                  height: 120,
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(100),
                                      child: Image.asset(
                                        'assets/image/image 1.png',
                                        fit: BoxFit.cover,
                                      )),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          tablet: Container(),
          mobile: Container(),
        ),
      ],
    );
  }

  Widget? _getPageWidget(RouteSettings settings) {
    if (settings.name == null) {
      return null;
    }
    final uri = Uri.parse(settings.name!);
    switch (uri.path) {
      case '/':
        return HomeScreenAdmin();
    }
    return null;
  }
}
