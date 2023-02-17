import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:e_learning_smk_pi/widgets/my_font.dart';
import 'package:flutter/material.dart';

class Kelas extends StatefulWidget {
  const Kelas({super.key});

  @override
  State<Kelas> createState() => _KelasState();
}

class _KelasState extends State<Kelas> {
  final List<String> items = [
    'X (Sepuluh)',
    'XI (Sebelas)',
    'XII (Dua Belas)',
  ];
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      decoration: const BoxDecoration(
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
          hint: const Text('Masukan Kelas Kamu', style: font10w6),
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
