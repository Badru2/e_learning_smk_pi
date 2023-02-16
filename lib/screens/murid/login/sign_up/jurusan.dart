import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:e_learning_smk_pi/widgets/my_font.dart';
import 'package:flutter/material.dart';

class Jurusan extends StatefulWidget {
  const Jurusan({super.key});

  @override
  State<Jurusan> createState() => _JurusanState();
}

class _JurusanState extends State<Jurusan> {
  final List<String> items = [
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
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.black),
        ),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton2(
          barrierColor: Colors.grey.withOpacity(0.5),
          dropdownDecoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 2),
              borderRadius: BorderRadius.circular(10)),
          isExpanded: true,
          hint: Text('Masukan Jurusan kamu', style: font10w6),
          items: items
              .map((item) => DropdownMenuItem<String>(
                    value: item,
                    child: Text(item, style: font12w5),
                  ))
              .toList(),
          value: selectedValue,
          onChanged: (value) {
            setState(() {
              selectedValue = value as String;
            });
          },
          itemHeight: 30,
          // dropdownMaxHeight: MediaQuery.of(context).size.height * 0.3,
        ),
      ),
    );
  }
}
