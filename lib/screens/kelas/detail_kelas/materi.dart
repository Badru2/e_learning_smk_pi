import 'package:e_learning_smk_pi/screens/kelas/detail_kelas/detail_kelas_screens.dart';
import 'package:e_learning_smk_pi/screens/kelas/detail_kelas/detailmateri.dart';
import 'package:e_learning_smk_pi/screens/kelas/line.dart';
import 'package:e_learning_smk_pi/widgets/my_font.dart';
import 'package:flutter/material.dart';

class Materi extends StatelessWidget {
  const Materi({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 100,
        width: MediaQuery.of(context).size.width * 0.85,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF5C3CD2),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const DetailMateri()),
            );
          },
          child: Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                    // margin: EdgeInsets.only(left: 5),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        const ListTile(
                          dense: false,
                          title: Text(
                            'Materi #1',
                            style: font10w6w,
                          ),
                          // minVerticalPadding: -4,
                          subtitle: Text(
                            'Persamaan Linear',
                            style: font20w6,
                          ),
                          visualDensity:
                              VisualDensity(horizontal: 0, vertical: -4),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.70,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const <Widget>[
                              Text(
                                '26-01-2023',
                                style: font10w6w,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 7,
                        )
                      ],
                    ),
                  ),
                  const Positioned(
                    top: 15,
                    child: LinePelajaran(),
                  ),
                ],
              ),
              // const SizedBox(
              //   height: 20,
              // ),
              // const Istirahat()
            ],
          ),
        ),
      ),
    );
  }
}
