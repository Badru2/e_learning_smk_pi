import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DetailBawah extends StatelessWidget {
  const DetailBawah({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Text('bagikan artikel ini:'),
            Row(
              children: [
                // Twitter
                Icon(Icons.ac_unit_rounded),
                // Email
                Icon(Icons.ac_unit_rounded),
                // Instagram
                Icon(Icons.ac_unit_outlined),
                // WhatsApp
                Icon(Icons.whatsapp_outlined)
              ],
            )
          ],
        ),
        Column(
          children: [
            Row(
              children: [
                Icon(Icons.phone),
                Text('0813-2465-7654'),
              ],
            ),
            Text('hubungi kami jika ingin membuat berita')
          ],
        ),
      ],
    );
  }
}
