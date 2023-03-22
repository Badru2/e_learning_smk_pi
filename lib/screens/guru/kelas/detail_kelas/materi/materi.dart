import 'package:e_learning_smk_pi/screens/guru/kelas/detail_kelas/materi/detail_materi.dart';
import 'package:flutter/material.dart';

class MateriButton extends StatelessWidget {
  const MateriButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.65,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF467BCC),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DetailMateriGuru(),
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
                          color: Color(0XFF0842D8),
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
                                'Materi #1',
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
                onPressed: () {},
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
