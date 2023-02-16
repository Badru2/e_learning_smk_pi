import 'package:e_learning_smk_pi/screens/murid/jadwal/ekstrakulikuler.dart';
import 'package:e_learning_smk_pi/screens/murid/jadwal/pelajaran.dart';
import 'package:flutter/material.dart';

class Pilihan extends StatefulWidget {
  const Pilihan({super.key});

  @override
  State<Pilihan> createState() => _PilihanState();
}

class _PilihanState extends State<Pilihan> {
  int _buttonindex = 0;

  final _pilih = [
    const Pelajaran(),
    const Ekstrakulikuler(),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    _buttonindex = 0;
                  });
                },
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 25, horizontal: 25),
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  child: const Text(
                    'Pelajaran',
                    style: TextStyle(fontSize: 10),
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
                  padding:
                      const EdgeInsets.symmetric(vertical: 25, horizontal: 25),
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  child: const Text(
                    'Ekstrakulikuler',
                    style: TextStyle(fontSize: 10),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        _pilih[_buttonindex]
      ],
    );
  }
}
