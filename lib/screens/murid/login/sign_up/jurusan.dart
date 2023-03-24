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
    'X-OTKP',
    'XI-OTKP',
    'XII-OTKP',
    'X-TKRO',
    'XI-TKRO',
    'XII-TKRO',
    'X-TBSM',
    'XI-TBSM',
    'XII-TBSM',
    'X-TITL',
    'XI-TITL',
    'XI-TITL',
    'X-RPL',
    'XI-RPL',
    'XII-RPL',
    'X-TKJ',
    'XI-TKJ',
    'XII-TKJ',
    'X-DKV',
    'XI-DKV',
    'XII-DKV',
    'X-TP',
    'XI-TP',
    'XII-TP',
    'X-HR',
    'XI-HR',
    'XII-HR',
  ];
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 13, 10, 13),
      margin: const EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: const Border(
          bottom: BorderSide(color: Colors.black),
          top: BorderSide(color: Colors.black),
          left: BorderSide(color: Colors.black),
          right: BorderSide(color: Colors.black),
        ),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton2(
          barrierColor: Colors.grey.withOpacity(0.5),
          dropdownDecoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 1),
              borderRadius: BorderRadius.circular(10)),
          isExpanded: true,
          hint: const Text('Masukan Jurusan kamu', style: font10w6),
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
