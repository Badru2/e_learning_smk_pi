import 'dart:async';
import 'package:e_learning_smk_pi/screens/murid/login/login_screen.dart';
import 'package:e_learning_smk_pi/widgets/my_font.dart';
import 'package:flutter/material.dart';

class Berhasil extends StatefulWidget {
  @override
  _BerhasilState createState() => _BerhasilState();
}

class _BerhasilState extends State<Berhasil> {
  Timer? searchOnStoppedTyping;
  _onChangeHandler() {
    const duration = Duration(
        milliseconds:
            2000); // set the duration that you want call pop() after that.
    if (searchOnStoppedTyping != null) {
      searchOnStoppedTyping?.cancel(); // clear timer
    }
    searchOnStoppedTyping = Timer(duration, () => navigateHome());
  }

  navigateHome() {
    // Navigator.of(context).pop(
    //   MaterialPageRoute(
    //     builder: (context) => LoginScreen(),
    //   ),
    // );
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const LoginScreen()),
    );
  }

  @override
  void initState() {
    _onChangeHandler();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        //Use GestureDetector's behavior property and pass HitTestBehavior.opaque to it, which recognizes entire screen and detects the tap when you tap anywhere on the screen.
        behavior: HitTestBehavior.opaque,
        onTap: _onChangeHandler,
        child: SafeArea(
          child: Center(
            child: Column(
              children: <Widget>[
                const SizedBox(height: 70),
                SizedBox(
                  child: Image.asset('assets/image/image 1.png'),
                ),
                const SizedBox(height: 20),
                const Text(
                  'E-LEARNING SMK PI',
                  style: font22w7b,
                ),
                const SizedBox(height: 100),
                const Icon(
                  Icons.check_circle_outline_rounded,
                  size: 150,
                  color: Color(0xFF4ECB71),
                ),
                const SizedBox(height: 20),
                const SizedBox(
                  width: 300,
                  child: Text(
                    'Kamu Telah Berhasil Daftar!, Silahkan tunggu konfirmasi lebih lanjut.',
                    textAlign: TextAlign.center,
                    style: font20w6g,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
