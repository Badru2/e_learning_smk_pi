import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:e_learning_smk_pi/widgets/my_font.dart';
import 'package:flutter/material.dart';

class MataPelajaranSignUp extends StatefulWidget {
  const MataPelajaranSignUp({super.key});

  @override
  State<MataPelajaranSignUp> createState() => _MataPelajaranSignUpState();
}

class _MataPelajaranSignUpState extends State<MataPelajaranSignUp> {
  final List<String> items = [
    'PBO(Pemrograman Berbasis Objek)',
    'PAI(Pelajaran Agama Islam)',
    'Bahasa Indonesia',
    'Bahasa Inggris',
    'Bahasa Sunda',
    'Seni Budaya',
    'BASDAT(Basis Data)',
    'PWPB(Pemrograman Web dan Perangkat Bergerak)',
    'PJOK',
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
          hint: const Text('Mata Pelajaran', style: font15w6),
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
