import 'package:e_learning_smk_pi/screens/daftar_ekskul/checkbox.dart';
import 'package:e_learning_smk_pi/widgets/appbar_back.dart';
import 'package:e_learning_smk_pi/widgets/my_font.dart';
import 'package:flutter/material.dart';

class DaftarEkskul extends StatefulWidget {
  const DaftarEkskul({super.key});

  @override
  State<DaftarEkskul> createState() => _DaftarEkskulState();
}

class _DaftarEkskulState extends State<DaftarEkskul> {
  bool futsal = false,
      basket = false,
      pramuka = false,
      math = false,
      marching = false,
      volly = false,
      badmintom = false,
      japanese = false,
      english = false,
      bajak = false,
      silat = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarBack(),
      // bottomNavigationBar: Navbar(),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Container(
              padding: const EdgeInsets.only(top: 20, bottom: 20),
              width: MediaQuery.of(context).size.width * 0.95,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 2),
                  borderRadius: BorderRadius.circular(4)),
              child: Column(
                children: [
                  ListTile(
                    title: const Text(
                      'Nama lengkap. *',
                      style: font20w6b,
                    ),
                    subtitle: TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Nama kamu',
                        hintStyle: font10w6,
                      ),
                    ),
                  ),
                  ListTile(
                    title: const Text(
                      'No.Telepon. *',
                      style: font20w6b,
                    ),
                    subtitle: TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        hintText: '08XX-XXXX-XXXX',
                        hintStyle: font10w6,
                      ),
                    ),
                  ),
                  const SizedBox(
                    child: CheckboxDaftar(),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 2,
                    color: Colors.black,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ListTile(
                    title: const Text(
                      'Alasan kamu ikut ekstrakulikuler tersebut.*',
                      style: font15w6,
                    ),
                    subtitle: TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Alasan Kamu',
                        hintStyle: font10w6,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: const EdgeInsets.only(left: 20),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF5783DB),
                      ),
                      child: const Text(
                        'Kirim',
                        style: font12w6w,
                      ),
                      onPressed: () {},
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
