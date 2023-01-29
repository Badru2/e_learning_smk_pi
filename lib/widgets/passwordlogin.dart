import 'package:flutter/material.dart';

class Password1 extends StatelessWidget {
  const Password1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          obscureText: true,
          onChanged: ((value) {}),
          obscuringCharacter: ".",
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            hintText: 'Password',
            suffixIcon: IconButton(
              icon: const Icon(Icons.remove_red_eye),
              onPressed: () {},
            ),
          ),
        ),
      ],
    );
  }
}
