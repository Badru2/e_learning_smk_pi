import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:e_learning_smk_pi/widgets/appbar_admin.dart';
import 'package:e_learning_smk_pi/widgets/my_font.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

class TambahMapelAdmin extends StatefulWidget {
  const TambahMapelAdmin({super.key});

  @override
  State<TambahMapelAdmin> createState() => _TambahMapelAdminState();
}

class _TambahMapelAdminState extends State<TambahMapelAdmin> {
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
    final Color pickerColor;
    final ValueChanged<Color> onColorChanged;
    final List<Color>? colorHistory;
    final ValueChanged<List<Color>>? onHistoryChanged;
    return Scaffold(
      appBar: const AppbarAdmin(),
      body: Container(
        margin: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 30, bottom: 20),
                alignment: Alignment.centerLeft,
                width: 590,
                child: const ListTile(
                  title: Text(
                    'Tambah Mata Pelajaran',
                    style: font30w7,
                  ),
                ),
              ),
              //// Jurusan -->
              Container(
                width: 590,
                alignment: Alignment.centerLeft,
                child: ListTile(
                  title: const Text(
                    'Nama Jurusan :',
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
                        hint: const Text('Pilih Jurusan', style: font20w6b),
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
                        hint: const Text('Pilih Kelas', style: font20w6b),
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
              //// Nama Guru -->
              Container(
                width: 590,
                alignment: Alignment.centerLeft,
                child: ListTile(
                  // contentPadding: EdgeInsets.only(bottom: 10),
                  title: const Text(
                    'Nama Guru :',
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
                        hint: const Text('Pilih Guru', style: font20w6b),
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
              SizedBox(height: 30),
              Container(
                width: 590,
                alignment: Alignment.centerLeft,
                child: ListTile(
                  title: const Text(
                    'Pilih Warna ',
                    style: font20w6b,
                  ),
                  subtitle: TextButton(
                    onPressed: () {},
                    child: Container(
                      margin: const EdgeInsets.only(right: 320, top: 20),
                      width: 300,
                      height: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.black, width: 2),
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: 60,
                            height: 60,
                            margin: const EdgeInsets.only(left: 10),
                            decoration: BoxDecoration(
                              color: Color(0xFFD9D9D9),
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.black, width: 2),
                            ),
                          ),
                          const SizedBox(width: 20),
                          const Text(
                            '#D9D9D9',
                            style: font20w6b,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
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
              //// Pilih Warna -->
              // Container(
              //     child: Column(
              //   children: [
              //     ColorPicker(
              //       pickerColor: color,
              //       onColorChanged: changeColor,
              //       colorPickerWidth: 300,
              //       pickerAreaHeightPercent: 0.7,
              //       // enableAlpha: $_enableAlpha4,
              //       displayThumbColor: true,
              //       paletteType: PaletteType.hsvWithHue,
              //       labelTypes: const [],
              //       pickerAreaBorderRadius: const BorderRadius.only(
              //         topLeft: Radius.circular(2),
              //         topRight: Radius.circular(2),
              //       ),
              //       // hexInputController: textController,
              //       portraitOnly: true,
              //     ),
              //     Padding(
              //       padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
              //       child: CupertinoTextField(
              //         // controller: textController,
              //         prefix: const Padding(
              //             padding: EdgeInsets.only(left: 8),
              //             child: Icon(Icons.tag)),
              //         suffix: IconButton(
              //           icon: const Icon(Icons.content_paste_rounded),
              //           onPressed: () => copyToClipboard(textController.text),
              //           // onPressed: () {},
              //         ),
              //         autofocus: true,
              //         maxLength: 9,
              //         inputFormatters: [
              //           UpperCaseTextFormatter(),
              //           FilteringTextInputFormatter.allow(
              //               RegExp(kValidHexPattern)),
              //         ],
              //       ),
              //     )
              //   ],
              // )),
              //// Pilih Warna <--
            ],
          ),
        ),
      ),
    );
  }
}
