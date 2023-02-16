import 'package:e_learning_smk_pi/widgets/appbar_back.dart';
import 'package:e_learning_smk_pi/widgets/my_font.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class IkutKelasScreen extends StatelessWidget {
  const IkutKelasScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final data = [
      'Pastikan bahwa akun benar-benar punya kamu.',
      'Pastikan juga bahwa pelajaran kelas dan jurusan sudah sesuai.',
      'gunakan kode kelas, dengan 5 sampai 6 huruf dan angka, tanpa spasi atau simbol.',
      'Jika ada kesulitan silahkan silahkan buka artikel bantuan.',
    ];

    final _markDownData = data.map((x) => "- $x\n").reduce((x, y) => "$x$y");
    print(_markDownData);

    return Scaffold(
      appBar: const AppBarBack(),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.95,
              child: Column(
                children: <Widget>[
                  const SizedBox(
                    height: 20,
                  ),
                  const ListTile(
                    title: Text(
                      'Akun kamu saat ini :',
                      style: font15w6,
                    ),
                  ),
                  ListTile(
                    visualDensity: const VisualDensity(vertical: 4),
                    // dense: true,
                    leading: Image.asset(
                      'assets/image/profile.png',
                    ),
                    title: const Text(
                      'Hilal Badru Zaman',
                      style: font20w6b,
                    ),
                    subtitle: const Text(
                      '08414812481248',
                      style: font10w5,
                    ),
                    minVerticalPadding: 35,
                  ),
                  const ListTile(
                    title: Text(
                      'Mintalah  kode kelas ke guru kamu lalu masukan ke sini',
                      style: font12w6,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'masukan kode kelas kamu',
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          borderSide: BorderSide(
                            width: 1.5,
                            color: Colors.black,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          borderSide: BorderSide(
                            width: 1.5,
                            color: Color(0xFF0066FF),
                          ),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          borderSide: BorderSide(
                            width: 1.5,
                            color: Color(0xFFFF2222),
                          ),
                        ),
                        labelText: 'kode kelas',
                      ),
                    ),
                  ),
                  const ListTile(
                    title: Text(
                      'cara masuk dengan kode kelas',
                      style: font15w6,
                    ),
                  ),
                  SizedBox(
                    height: 200,
                    child: Markdown(
                      data: _markDownData,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 20),
                    alignment: Alignment.centerLeft,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF0066FF),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Gabung Kelas',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
