import 'package:e_learning_smk_pi/widgets/my_font.dart';
import 'package:flutter/material.dart';

import 'detail_kelas/detail_kelas_screens.dart';
import 'line.dart';

class PelajaranKelas extends StatelessWidget {
  const PelajaranKelas({super.key});

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
              MaterialPageRoute(
                  builder: (context) => const DetailKelasScreens()),
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
                        // const SizedBox(
                        //   height: 10,
                        // ),
                        const ListTile(
                          dense: false,
                          title: Text(
                            'Matematika',
                            style: font20w6,
                          ),
                          subtitle: Text(
                            'XI RPL',
                            style: font10w6w,
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
                                'Iis',
                                style: font15w6w,
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
