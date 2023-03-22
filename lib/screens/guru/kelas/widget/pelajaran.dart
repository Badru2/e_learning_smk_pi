import 'package:e_learning_smk_pi/screens/guru/kelas/detail_kelas/detail_kelas.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

class PelajaranKelasGuru extends StatelessWidget {
  const PelajaranKelasGuru({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF467BCC),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            )),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailKelasGuru(),
              ));
        },
        child: Column(
          children: [
            Container(
              height: 100,
              margin: const EdgeInsets.only(bottom: 9, top: 9),
              width: MediaQuery.of(context).size.width * 0.85,
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(
                    color: Color(0xFF090E86),
                    width: 4.5,
                    style: BorderStyle.solid,
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
                          'Matematika',
                          style: TextStyle(
                            fontFamily: 'Outfit',
                            fontSize: 20,
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
                      'Tahun Pelajaran 2022/2023',
                      style: TextStyle(
                        fontFamily: 'Outfit',
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFFffffff),
                      ),
                    ),
                    visualDensity: VisualDensity(horizontal: 0, vertical: -4),
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
                          ' XI RPL',
                          style: TextStyle(
                            fontFamily: 'Outfit',
                            fontSize: 15,
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
    );
  }
}
