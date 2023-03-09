import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:e_learning_smk_pi/widgets/appbar_admin.dart';
import 'package:e_learning_smk_pi/widgets/my_font.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class TambahKelasAdmin extends StatefulWidget {
  const TambahKelasAdmin({super.key});

  @override
  State<TambahKelasAdmin> createState() => _TambahKelasAdminState();
}

class _TambahKelasAdminState extends State<TambahKelasAdmin> {
  final List<String> jurusan = [
    'OTKP (Otomatisasi dan Tata Kelola Perkantoran)',
    'TKRO (Teknik Kendaraan Ringan Otomatisasi)',
    'TBSM (Teknik dan Bisnis Sepeda Motor)',
    'TITL (Teknik Instalasi Tenaga Listrik)',
    'RPL (Rekayasa Perangkat Lunak)',
    'TKJ (Teknik Komputer Jaringan)',
    'DKV (Design Komunikasi)',
    'TP (Teknik Permesinan)',
    'HR (Hotel&Restoran)',
  ];
  final List<String> kelas = [
    'X',
    'XI',
    'XII',
  ];
  final List<String> guru = [
    'Giri',
    'Iis',
    'Frida',
    'Firman',
    'Agus',
  ];

  String? selectedkelas;
  String? selectedjurusan;
  String? selectedguru;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppbarAdmin(),
      body: Container(
        margin: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 30, bottom: 20),
                alignment: Alignment.centerLeft,
                width: 590,
                child: const ListTile(
                  title: Text(
                    'Tambah Kelas',
                    style: font30w7,
                  ),
                ),
              ),

              //// Kelas -->
              Container(
                width: 590,
                alignment: Alignment.centerLeft,
                child: ListTile(
                  title: const Text(
                    'Kelas :',
                    style: font20w6b,
                  ),
                  subtitle: Container(
                    padding: const EdgeInsets.only(bottom: 10),
                    margin: const EdgeInsets.only(top: 10),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      border: Border(bottom: BorderSide(color: Colors.black)),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton2(
                        barrierColor: Colors.grey.withOpacity(0.5),
                        dropdownDecoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 1),
                            borderRadius: BorderRadius.circular(10)),
                        isExpanded: true,
                        // hint: const Text('Pilih Kelas', style: font20w6b),
                        items: kelas
                            .map((item) => DropdownMenuItem<String>(
                                  value: item,
                                  child: Text(item, style: font20w6b),
                                ))
                            .toList(),
                        value: selectedkelas,
                        onChanged: (value) {
                          setState(() {
                            selectedkelas = value as String;
                          });
                        },
                        itemHeight: 30,
                      ),
                    ),
                  ),
                ),
              ),
              //// Kelas <--
              const SizedBox(height: 30),
              //// Jurusan -->
              Container(
                width: 590,
                alignment: Alignment.centerLeft,
                child: ListTile(
                  title: const Text(
                    'Jurusan :',
                    style: font20w6b,
                  ),
                  subtitle: Container(
                    padding: const EdgeInsets.only(bottom: 10),
                    margin: const EdgeInsets.only(top: 10),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      border: Border(bottom: BorderSide(color: Colors.black)),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton2(
                        barrierColor: Colors.grey.withOpacity(0.5),
                        dropdownDecoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 1),
                            borderRadius: BorderRadius.circular(10)),
                        isExpanded: true,
                        // hint: const Text('Pilih Jurusan', style: font20w6b),
                        items: jurusan
                            .map((item) => DropdownMenuItem<String>(
                                  value: item,
                                  child: Text(item, style: font20w6b),
                                ))
                            .toList(),
                        value: selectedjurusan,
                        onChanged: (value) {
                          setState(() {
                            selectedjurusan = value as String;
                          });
                        },
                        itemHeight: 30,
                      ),
                    ),
                  ),
                ),
              ),
              //// Jurusan <--
              const SizedBox(height: 30),
              //// Nama Guru -->
              Container(
                width: 590,
                alignment: Alignment.centerLeft,
                child: ListTile(
                  // contentPadding: EdgeInsets.only(bottom: 10),
                  title: const Text(
                    'Wali Kelas :',
                    style: font20w6b,
                  ),
                  subtitle: Container(
                    padding: const EdgeInsets.only(bottom: 10),
                    margin: const EdgeInsets.only(top: 10),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      border: Border(bottom: BorderSide(color: Colors.black)),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton2(
                        barrierColor: Colors.grey.withOpacity(0.5),
                        dropdownDecoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 1),
                            borderRadius: BorderRadius.circular(10)),
                        isExpanded: true,
                        // hint: const Text('Pilih Guru', style: font20w6b),
                        items: guru
                            .map((item) => DropdownMenuItem<String>(
                                  value: item,
                                  child: Text(item, style: font20w6b),
                                ))
                            .toList(),
                        value: selectedguru,
                        onChanged: (value) {
                          setState(() {
                            selectedguru = value as String;
                          });
                        },
                        itemHeight: 30,
                      ),
                    ),
                  ),
                ),
              ),
              //// Pilih Guru <--
              const SizedBox(height: 30),
              //// Buat -->
              SizedBox(
                width: 560,
                child: Align(
                  alignment: Alignment.centerRight,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      backgroundColor: Color(0xFF367CFF),
                      padding: EdgeInsets.fromLTRB(60, 20, 60, 20),
                    ),
                    child: Text('Buat'),
                  ),
                ),
              )
              //// Buat <--
            ],
          ),
        ),
      ),
    );
  }
}
