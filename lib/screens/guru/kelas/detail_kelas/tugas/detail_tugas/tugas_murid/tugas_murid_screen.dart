import 'package:e_learning_smk_pi/screens/guru/kelas/detail_kelas/tugas/detail_tugas/tugas_murid/belum_selesai.dart';
import 'package:e_learning_smk_pi/screens/guru/kelas/detail_kelas/tugas/detail_tugas/tugas_murid/sudah_selesai.dart';
import 'package:e_learning_smk_pi/widgets/my_border.dart';
import 'package:e_learning_smk_pi/widgets/my_font.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class TugasMuridScreen extends StatefulWidget {
  const TugasMuridScreen({super.key});

  @override
  State<TugasMuridScreen> createState() => _TugasMuridScreenState();
}

class _TugasMuridScreenState extends State<TugasMuridScreen> {
  int _buttonindex = 0;

  final _pilih = [
    // Materi
    const BelumSelesai(),
    // Tugas
    const SudahSelesai(),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        children: [
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
                  // width: MediaQuery.of(context).size.width * 0.45,
                  padding: const EdgeInsets.fromLTRB(15, 10, 30, 0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: const [boxShadows],
                    color: Colors.white,
                    // color: _buttonindex == 1
                    //     ? const Color(0xFF13005A)
                    //     : const Color(0xFFD9D9D9),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        width: 97,
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            textAlign: TextAlign.center,
                            '21',
                            style: font20w6b,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        textAlign: TextAlign.center,
                        'Belum Selesai',
                        style: font15w6,
                      ),
                      const SizedBox(height: 10),
                      Center(
                        child: Container(
                          width: 110,
                          height: 2,
                          margin: EdgeInsets.only(left: 10),
                          color: _buttonindex == 0
                              ? Color(0xFF367CFF)
                              : Colors.white,
                        ),
                      )
                    ],
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
                  // width: MediaQuery.of(context).size.width * 0.45,
                  padding: const EdgeInsets.fromLTRB(15, 10, 30, 0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: const [boxShadows],
                    color: Colors.white,
                    // color: _buttonindex == 1
                    //     ? const Color(0xFF13005A)
                    //     : const Color(0xFFD9D9D9),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        width: 100,
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            textAlign: TextAlign.center,
                            '12',
                            style: font20w6b,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        textAlign: TextAlign.center,
                        'Sudah Selesai',
                        style: font15w6,
                      ),
                      const SizedBox(height: 10),
                      Center(
                        child: Container(
                          width: 110,
                          height: 2,
                          margin: EdgeInsets.only(left: 10),
                          color: _buttonindex == 1
                              ? Color(0xFF367CFF)
                              : Colors.white,
                        ),
                      )
                    ],
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
