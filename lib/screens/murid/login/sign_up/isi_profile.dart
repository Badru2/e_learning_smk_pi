import 'package:e_learning_smk_pi/screens/murid/login/login_screen.dart';
import 'package:e_learning_smk_pi/screens/murid/login/sign_up/berhasil.dart';
import 'package:e_learning_smk_pi/widgets/my_font.dart';
import 'package:flutter/material.dart';

import 'jurusan.dart';
import 'kelamin.dart';
import 'kelas.dart';

class IsiProfile extends StatefulWidget {
  const IsiProfile({super.key});

  @override
  State<IsiProfile> createState() => _SIsiProfiletate();
}

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
                  const JenisKelamin(),
                  const SizedBox(height: 20),

                  // Tempat, Tanggal Lahir
                  Container(
                    alignment: Alignment.centerLeft,
                    child:
                        const Text('Tempat, Tanggal Lahir', style: font20w6b),
                  ),
                  TextFormField(
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
                    decoration: const InputDecoration(
                      hintText: 'Masukan Agama Kamu',
                      hintStyle: font10w6,
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Jurusan
                  Container(
                    alignment: Alignment.centerLeft,
                    child: const Text('Jurusan', style: font20w6b),
                  ),
                  const Jurusan(),
                  const SizedBox(height: 20),

                  // Kelas
                  Container(
                    alignment: Alignment.centerLeft,
                    child: const Text('Kelas', style: font20w6b),
                  ),
                  const Kelas(),
                  const SizedBox(height: 20),

                  // Alamat Lengkap
                  Container(
                    alignment: Alignment.centerLeft,
                    child: const Text('Alamat Lengkap', style: font20w6b),
                  ),
                  TextFormField(
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
                    decoration: const InputDecoration(
                      hintText: 'Masukan Pekerjaan Ibu',
                      hintStyle: font10w6,
                    ),
                  ),
                  const SizedBox(height: 40),
                  const SizedBox(
                    width: 330,
                    child: Text(
                      'Isi semua keterangan diatas sebagai data diri Anda',
                      style: font15w6,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.only(top: 13, bottom: 13),
                      backgroundColor: const Color(0xFF13005A),
                      fixedSize: const Size.fromWidth(280),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Berhasil()),
                      );
                    },
                    child: const Text(
                      'DAFTAR',
                      style: font16w6w,
                    ),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.only(top: 13, bottom: 13),
                      backgroundColor: const Color(0xFF367CFF),
                      fixedSize: const Size.fromWidth(280),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginScreen()),
                      );
                    },
                    child: const Text(
                      'LOG IN',
                      style: font16w6w,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
