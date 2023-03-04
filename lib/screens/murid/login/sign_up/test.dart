import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_learning_smk_pi/widgets/my_font.dart';
import 'package:e_learning_smk_pi/widgets/navbar.dart';
import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
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
  final umurController = TextEditingController();
  final _formkey = GlobalKey<FormState>();
  String? kelamin;

  @override
  void initState() {
    kelamin = kelamin.toString();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.fromLTRB(15, 50, 15, 30),
          child: Column(
            key: _formkey,
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

              // Tempat, Tanggal Lahir
              Container(
                alignment: Alignment.centerLeft,
                child: const Text('Tempat, Tanggal Lahir', style: font20w6b),
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
                controller: telpOrtuController,
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
              const SizedBox(height: 20),

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

                        final user = User(
                          nik: int.parse(nikController.text),
                          nama: namaController.text,
                          ttl: ttlController.text,
                          agama: agamaController.text,
                          alamatSiswa: alamatSiswaController.text,
                          telpSiswa: int.parse(teleponController.text),
                          namaAyah: namaAyahController.text,
                          namaIbu: namaIbuController.text,
                          alamatOrtu: alamatOrtuController.text,
                          telpOrtu: int.parse(telpOrtuController.text),
                          kerjaAyah: kerjaAyahController.text,
                          kerjaIbu: kerjaIbuController.text,
                          kelamin: kelamin.toString(),
                        );

                        isi(user);
                      },
                      child: const Text('Kirim'))
                ],
              ),
            ],
          ),
        ),
      )),
    );
  }

  Future isi(User user) async {
    final docUser = FirebaseFirestore.instance
        .collection('users')
        .doc()
        .collection('profile')
        .doc();
    // Ambil ID
    // user.id = docUser.id;

    final json = user.toJson();
    await docUser.set(json);
  }
}

class User {
  // String id;
  final int nik;
  final String nama;
  final String ttl;
  final String agama;
  final String alamatSiswa;
  final int telpSiswa;
  final String namaAyah;
  final String namaIbu;
  final String alamatOrtu;
  final int telpOrtu;
  final String kerjaAyah;
  final String kerjaIbu;
  final String kelamin;

  User({
    // this.id = '',
    required this.nama,
    required this.ttl,
    required this.agama,
    required this.alamatSiswa,
    required this.telpSiswa,
    required this.namaAyah,
    required this.namaIbu,
    required this.nik,
    required this.alamatOrtu,
    required this.telpOrtu,
    required this.kerjaAyah,
    required this.kerjaIbu,
    required this.kelamin,
  });

  Map<String, dynamic> toJson() => {
        // 'id': id,
        'nik': nik,
        'nama': nama,
        'ttl': ttl,
        'agama': agama,
        'alamatSiswa': alamatSiswa,
        'telpSiswa': telpSiswa,
        'namaAyah': namaAyah,
        'namaIbu': namaIbu,
        'alamatOrtu': alamatOrtu,
        'telpOrtu': telpOrtu,
        'kerjaAyah': kerjaAyah,
        'kerjaIbu': kerjaIbu,
        'kelamin': kelamin,
      };
}
