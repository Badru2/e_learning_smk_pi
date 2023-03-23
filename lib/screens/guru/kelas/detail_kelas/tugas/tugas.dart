import 'package:e_learning_smk_pi/screens/guru/kelas/detail_kelas/tugas/detail_tugas/detail_screen.dart';
import 'package:e_learning_smk_pi/screens/guru/kelas/tambah_tugas/tugas_screen.dart';
import 'package:e_learning_smk_pi/screens/murid/tugas/tugas_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class TugasButton extends StatelessWidget {
  const TugasButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.65,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFCC464E),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DetailTugasGuru(),
                    ));
              },
              child: Column(
                children: [
                  Container(
                    height: 89,
                    margin: const EdgeInsets.only(top: 9, bottom: 9),
                    width: MediaQuery.of(context).size.width * 0.85,
                    decoration: const BoxDecoration(
                      border: Border(
                        left: BorderSide(
                          color: Colors.black,
                          width: 5,
                        ),
                      ),
                    ),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.78,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const <Widget>[
                              Text(
                                'Tugas #1',
                                style: TextStyle(
                                  fontFamily: 'Outfit',
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFFffffff),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const ListTile(
                          dense: false,
                          title: Text(
                            'Persamaan Linear',
                            style: TextStyle(
                              fontFamily: 'Outfit',
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFFffffff),
                            ),
                          ),
                          visualDensity:
                              VisualDensity(horizontal: 0, vertical: -4),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.78,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const <Widget>[
                              Text(
                                '26-01-2023',
                                style: TextStyle(
                                  fontFamily: 'Outfit',
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFFffffff),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(width: 10),
              FloatingActionButton.large(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const TambahTugasScreenGuru(),
                      ));
                },
                backgroundColor: const Color(0xFF2A39D6),
                child: const Icon(
                  Icons.add,
                  size: 50,
                  weight: 900,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
