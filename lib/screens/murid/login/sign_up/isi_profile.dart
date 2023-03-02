import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_learning_smk_pi/screens/murid/login/login_screen.dart';
import 'package:e_learning_smk_pi/screens/murid/login/sign_up/berhasil.dart';
import 'package:e_learning_smk_pi/widgets/my_font.dart';
import 'package:e_learning_smk_pi/widgets/navbar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'kelamin.dart';

class IsiProfile extends StatefulWidget {
  const IsiProfile({super.key});

  @override
  State<IsiProfile> createState() => _SIsiProfiletate();
}

final nikController = TextEditingController();
final namaController = TextEditingController();
final ttlController = TextEditingController();
final agamaController = TextEditingController();
final alamatSiswaController = TextEditingController();
final teleponController = TextEditingController();
final namaAyahController = TextEditingController();
final namaIbuController = TextEditingController();
final alamatOrtuController = TextEditingController();
final telpOrtuController = TextEditingController();
final kerjaAyahController = TextEditingController();
final kerjaIbuController = TextEditingController();
String? kelamin;

class _SIsiProfiletate extends State<IsiProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.all(20),
              child: Column(
                children: <Widget>[
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
                    controller: nikController,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
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
                    controller: namaController,
                    decoration: const InputDecoration(
                      hintText: 'Masukan Nama Kamu',
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

                  // Tempat, Tanggal Lahir
                  Container(
                    alignment: Alignment.centerLeft,
                    child:
                        const Text('Tempat, Tanggal Lahir', style: font20w6b),
                  ),
                  TextFormField(
                    controller: ttlController,
                    decoration: const InputDecoration(
                      hintText: 'BXXXXXX, 3X-MXX-2XXX',
                      hintStyle: font10w6,
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Agama
                  Container(
                    alignment: Alignment.centerLeft,
                    child: const Text('Agama', style: font20w6b),
                  ),
                  TextFormField(
                    controller: agamaController,
                    decoration: const InputDecoration(
                      hintText: 'Masukan Agama Kamu',
                      hintStyle: font10w6,
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Jurusan
                  // Container(
                  //   alignment: Alignment.centerLeft,
                  //   child: const Text('Jurusan', style: font20w6b),
                  // ),
                  // const Jurusan(),
                  // const SizedBox(height: 20),

                  // Kelas
                  // Container(
                  //   alignment: Alignment.centerLeft,
                  //   child: const Text('Kelas', style: font20w6b),
                  // ),
                  // const Kelas(),
                  // const SizedBox(height: 20),

                  // Alamat Lengkap
                  Container(
                    alignment: Alignment.centerLeft,
                    child: const Text('Alamat Lengkap', style: font20w6b),
                  ),
                  TextFormField(
                    controller: alamatSiswaController,
                    decoration: const InputDecoration(
                      hintText: 'Masukan Alamat Kamu',
                      hintStyle: font10w6,
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Telepon Siswa
                  Container(
                    alignment: Alignment.centerLeft,
                    child: const Text('Telepon', style: font20w6b),
                  ),
                  TextFormField(
                    controller: teleponController,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      hintText: '08XX-XXXX-XXXX',
                      hintStyle: font10w6,
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Nama Ayah
                  Container(
                    alignment: Alignment.centerLeft,
                    child: const Text('Nama Ayah', style: font20w6b),
                  ),
                  TextFormField(
                    controller: namaAyahController,
                    decoration: const InputDecoration(
                      hintText: 'Masukan Nama Ayah Kamu',
                      hintStyle: font10w6,
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Nama Ibu
                  Container(
                    alignment: Alignment.centerLeft,
                    child: const Text('Nama Ibu', style: font20w6b),
                  ),
                  TextFormField(
                    controller: namaIbuController,
                    decoration: const InputDecoration(
                      hintText: 'Masukan Nama Ibu Kamu',
                      hintStyle: font10w6,
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Alamat OrangTua
                  Container(
                    alignment: Alignment.centerLeft,
                    child: const Text('Alamat OrangTua', style: font20w6b),
                  ),
                  TextFormField(
                    controller: alamatOrtuController,
                    decoration: const InputDecoration(
                      hintText: 'Masukan Alamat Ortu Kamu',
                      hintStyle: font10w6,
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Telepon OrangTua
                  Container(
                    alignment: Alignment.centerLeft,
                    child: const Text('Telepon OrangTua', style: font20w6b),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      hintText: '08XX-XXXX-XXXX',
                      hintStyle: font10w6,
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Pekerjaan Ayah
                  Container(
                    alignment: Alignment.centerLeft,
                    child: const Text('Pekerjaan Ayah', style: font20w6b),
                  ),
                  TextFormField(
                    controller: kerjaAyahController,
                    decoration: const InputDecoration(
                      hintText: 'Masukan Pekerjaan Ayah',
                      hintStyle: font10w6,
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Pekerjaan Ibu
                  Container(
                    alignment: Alignment.centerLeft,
                    child: const Text('Pekerjaan Ibu', style: font20w6b),
                  ),
                  TextFormField(
                    controller: kerjaIbuController,
                    decoration: const InputDecoration(
                      hintText: 'Masukan Pekerjaan Ibu',
                      hintStyle: font10w6,
                    ),
                  ),
                  const SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.only(top: 13, bottom: 13),
                          backgroundColor: const Color(0xFFF44336),
                          fixedSize: const Size.fromWidth(90),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Navbar()));
                        },
                        child: const Text(
                          'Batal',
                          style: font16w6w,
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.only(top: 13, bottom: 13),
                          backgroundColor: const Color(0xFF0066FF),
                          fixedSize: const Size.fromWidth(90),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Navbar(),
                            ),
                          );
                          final user = User();
                        },
                        child: const Text(
                          'Simpan',
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

  // Future createProfile({required String user}) async {
  //   final docUser = FirebaseFirestore.instance.collection('Users').doc();
  //   user.id = docuser.id;

  //   final json = user.toJson();
  //   await docUser.set(json);
  // }
}
