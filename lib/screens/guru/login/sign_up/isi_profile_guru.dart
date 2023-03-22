import 'package:e_learning_smk_pi/widgets/my_border.dart';
import 'package:e_learning_smk_pi/widgets/my_font.dart';
import 'package:e_learning_smk_pi/widgets/navbarguru.dart';
import 'package:flutter/material.dart';

class IsiProfileGuru extends StatefulWidget {
  const IsiProfileGuru({super.key});

  @override
  State<IsiProfileGuru> createState() => _IsiProfileGuruState();
}

class _IsiProfileGuruState extends State<IsiProfileGuru> {
  String? kelamin;

  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var enabledBorderB2 = enabledBorderB;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: _formkey,
            child: Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.all(20),
              child: Column(
                children: [
                  SizedBox(
                    child: Image.asset('assets/image/image 1.png'),
                  ),
                  const SizedBox(height: 20),
                  const SizedBox(
                    width: 170,
                    child: Text(
                      'E-LEARNING SMK PI',
                      style: font22w7b,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 40),

                  // NIK
                  Container(
                    alignment: Alignment.centerLeft,
                    child: const Text('NIK', style: font20w6b),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    cursorColor: Colors.black,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      enabledBorder: enabledBorderU,
                      focusedBorder: focusedBorderU,
                      hintText: '87XXXXXXXXXXXXXX',
                      hintStyle: font10w6,
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Nama Lengkap
                  Container(
                    alignment: Alignment.centerLeft,
                    child: const Text('Nama Lengkap', style: font20w6b),
                  ),
                  TextFormField(
                    cursorColor: Colors.black,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      enabledBorder: enabledBorderU,
                      focusedBorder: focusedBorderU,
                      hintText: 'Masukan Nama Kamu',
                      hintStyle: font10w6,
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Tempat, Tanggal Lahir
                  Container(
                    alignment: Alignment.centerLeft,
                    child: const Text('Email', style: font20w6b),
                  ),
                  TextFormField(
                    cursorColor: Colors.black,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      enabledBorder: enabledBorderU,
                      focusedBorder: focusedBorderU,
                      hintText: 'Masukan Email Kamu',
                      hintStyle: font10w6,
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Agama
                  Container(
                    alignment: Alignment.centerLeft,
                    child: const Text('No. Telephone', style: font20w6b),
                  ),
                  TextFormField(
                    cursorColor: Colors.black,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      enabledBorder: enabledBorderU,
                      focusedBorder: focusedBorderU,
                      hintText: '08XX-XXXX-XXXX',
                      hintStyle: font10w6,
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Alamat Lengkap
                  Container(
                    alignment: Alignment.centerLeft,
                    child: const Text('Alamat Lengkap', style: font20w6b),
                  ),
                  TextFormField(
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      enabledBorder: enabledBorderU,
                      focusedBorder: focusedBorderU,
                      hintText: 'Masukan Alamat Kamu',
                      hintStyle: font10w6,
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Jenis Kelamin
                  Container(
                    alignment: Alignment.centerLeft,
                    child: const Text('Jenis Kelamin', style: font20w6b),
                  ),
                  const SizedBox(height: 10),
                  Column(
                    children: [
                      RadioListTile(
                        activeColor: Colors.black,
                        contentPadding: EdgeInsets.zero,
                        dense: true,
                        visualDensity:
                            const VisualDensity(horizontal: -4, vertical: -4),
                        title: const Text("Laki-Laki"),
                        value: "Laki-Laki",
                        groupValue: kelamin,
                        onChanged: (value) {
                          setState(() {
                            kelamin = value.toString();
                          });
                        },
                      ),
                      RadioListTile(
                        activeColor: Colors.black,
                        contentPadding: EdgeInsets.zero,
                        dense: true,
                        visualDensity:
                            const VisualDensity(horizontal: -4, vertical: -4),
                        title: const Text("Perempuan"),
                        value: "Perempuan",
                        groupValue: kelamin,
                        onChanged: (value) {
                          setState(() {
                            kelamin = value.toString();
                          });
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),

                  // Telepon Siswa
                  Container(
                    alignment: Alignment.centerLeft,
                    child: const Text('Agama', style: font20w6b),
                  ),
                  TextFormField(
                    cursorColor: Colors.black,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      enabledBorder: enabledBorderU,
                      focusedBorder: focusedBorderU,
                      hintText: 'Masukan Agama Kamu',
                      hintStyle: font10w6,
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Nama Ayah
                  Container(
                    alignment: Alignment.centerLeft,
                    child:
                        const Text('Tempat, Tanggal Lahir', style: font20w6b),
                  ),
                  TextFormField(
                    cursorColor: Colors.black,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      enabledBorder: enabledBorderU,
                      focusedBorder: focusedBorderU,
                      hintText: 'Masukan Tempat, Tanggal Lahir',
                      hintStyle: font10w6,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Isi Semua Keterangan diatas sebagai data diri anda',
                    style: font13w6,
                  ),
                  const SizedBox(height: 20),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.only(top: 13, bottom: 13),
                          backgroundColor: const Color(0xFF13005A),
                          fixedSize:
                              Size.fromWidth(MediaQuery.of(context).size.width),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const NavbarGuru()));
                        },
                        child: const Text(
                          'DAFTAR',
                          style: font16w6w,
                        ),
                      ),
                      const SizedBox(height: 15),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.only(top: 13, bottom: 13),
                          backgroundColor: const Color(0xFF367CFF),
                          fixedSize:
                              Size.fromWidth(MediaQuery.of(context).size.width),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const NavbarGuru(),
                            ),
                          );
                        },
                        child: const Text(
                          'LOG IN',
                          style: font16w6w,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
