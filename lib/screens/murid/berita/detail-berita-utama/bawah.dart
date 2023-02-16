import 'package:e_learning_smk_pi/widgets/my_font.dart';
import 'package:e_learning_smk_pi/widgets/my_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailBawah extends StatelessWidget {
  const DetailBawah({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.3,
          child: Column(
            children: <Widget>[
              const SizedBox(
                // alignment: Alignment.centerLeft,
                child: Text(
                  'bagikan artikel ini:',
                  style: font13w6,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Twitter
                  SizedBox(
                    width: 20,
                    height: 20,
                    child: SvgPicture.asset(iconTwitter),
                  ),
                  // Email
                  const Icon(Icons.ac_unit_rounded),
                  // Instagram
                  SizedBox(
                    width: 20,
                    height: 20,
                    child: SvgPicture.asset(iconInstagram),
                  ),
                  // WhatsApp
                  SizedBox(
                    width: 20,
                    height: 20,
                    child: SvgPicture.asset(iconWhatsApp),
                  ),
                ],
              )
            ],
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.1,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.5,
          child: Column(
            children: [
              SizedBox(
                child: Row(
                  children: const <Widget>[
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
        ),
      ],
    );
  }
}
