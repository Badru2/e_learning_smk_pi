import 'package:e_learning_smk_pi/screens/guru/kelas/detail_kelas/tugas/detail_tugas/instruksi.dart';
import 'package:e_learning_smk_pi/screens/guru/kelas/detail_kelas/tugas/detail_tugas/tugas_murid/tugas_murid_screen.dart';
import 'package:e_learning_smk_pi/widgets/my_font.dart';
import 'package:flutter/material.dart';

class DetailTugasGuru extends StatefulWidget {
  const DetailTugasGuru({super.key});

  @override
  State<DetailTugasGuru> createState() => _DetailTugasGuruState();
}

class _DetailTugasGuruState extends State<DetailTugasGuru> {
  int _buttonindex = 0;

  final _pilih = [
    // Materi
    const Instruksi(),
    // Tugas
    const TugasMuridScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        title: const Text(
          'Penilaian',
          style: font20w6b,
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    _buttonindex = 0;
                  });
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 7,
                    horizontal: 10,
                  ),
                  width: MediaQuery.of(context).size.width * 0.45,
                  decoration: BoxDecoration(
                      color: _buttonindex == 0
                          ? const Color(0xFF13005A)
                          : const Color(0xFFD9D9D9),
                      borderRadius: BorderRadius.circular(5)),
                  child: Text(
                    'Intruksi',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 13,
                        color: _buttonindex == 0 ? Colors.white : Colors.black),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    _buttonindex = 1;
                  });
                },
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.45,
                  padding: const EdgeInsets.symmetric(
                    vertical: 7,
                    horizontal: 10,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: _buttonindex == 1
                        ? const Color(0xFF13005A)
                        : const Color(0xFFD9D9D9),
                  ),
                  child: Text(
                    textAlign: TextAlign.center,
                    'Tugas Murid',
                    style: TextStyle(
                        fontSize: 13,
                        color: _buttonindex == 1 ? Colors.white : Colors.black),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          _pilih[_buttonindex],
        ],
      ),
    );
  }
}
