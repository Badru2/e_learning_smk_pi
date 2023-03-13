import 'package:e_learning_smk_pi/widgets/my_font.dart';
import 'package:flutter/material.dart';

class KelasX extends StatefulWidget {
  const KelasX({super.key});

  @override
  State<KelasX> createState() => _KelasXState();
}

class _KelasXState extends State<KelasX> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 40,
          decoration: BoxDecoration(
            color: const Color(0xFF400986),
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Center(
            child: Text(
              'Kelas X',
              style: font15w6w,
            ),
          ),
        ),
        const SizedBox(height: 3),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 360,
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Container(
                  decoration: const BoxDecoration(
                    color: Color(0xFF367CFF),
                  ),
                  child: Container(
                    margin:
                        const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                    height: 30,
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: Colors.black),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.6,
                          child: const Text(
                            'X RPL',
                            style: font15w6,
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.12,
                          child: const Text(
                            'Depy',
                            style: font15w6w,
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.05,
                          child: const Text(
                            '35 Siswa',
                            style: font15w6w,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
              itemCount: 9,
            ),
          ),
        ),
      ],
    );
  }
}
