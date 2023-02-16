import 'package:e_learning_smk_pi/widgets/my_font.dart';
import 'package:flutter/material.dart';

class TextMading extends StatelessWidget {
  const TextMading({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // width: MediaQuery.of(context).size.width * 0.5,
      child: Column(
        children: [
          SizedBox(
            child: Row(
              children: const [
                Icon(Icons.phone),
                Text(
                  '0813-2465-7654',
                  style: font9w4,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: const Text(
              'hubungi kami jika ingin membuat berita',
              style: font9w4,
            ),
          )
        ],
      ),
    );
  }
}
