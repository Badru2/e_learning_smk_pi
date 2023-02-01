import 'package:flutter/material.dart';

class ButtonSubmitLogin extends StatelessWidget {
  const ButtonSubmitLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      // height: 50,
      // margin: const EdgeInsets.symmetric(horizontal: 50),
      // decoration: BoxDecoration(
      //   color: const Color(0xFF13005A),
      //   borderRadius: BorderRadiusDirectional.circular(10),
      // ),
      style: const ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(
          Color(0xFF13005A),
        ),
      ),
      onPressed: () {},
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
    );
  }
}
