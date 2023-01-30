import 'package:flutter/material.dart';

class Password1 extends StatefulWidget {
  const Password1({super.key});

  @override
  State<Password1> createState() => _Password1State();
}

class _Password1State extends State<Password1> {
  var _sembunyi = true;

  @override
  void iniState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          obscureText: _sembunyi,
          onChanged: ((value) {}),
          obscuringCharacter: ".",
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
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
    );
  }
}

class SetState {}
