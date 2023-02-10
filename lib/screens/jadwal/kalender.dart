import 'package:e_learning_smk_pi/screens/jadwal/date_picker.dart';
import 'package:e_learning_smk_pi/screens/jadwal/ekstrakulikuler.dart';
import 'package:e_learning_smk_pi/screens/jadwal/pelajaran.dart';
import 'package:e_learning_smk_pi/widgets/my_border.dart';
import 'package:e_learning_smk_pi/widgets/my_font.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class KalenderJadwal extends StatefulWidget {
  const KalenderJadwal({super.key});

  @override
  State<KalenderJadwal> createState() => _KalenderJadwalState();
}

List months = [
  'Januari',
  'Februari',
  'Maret',
  'April',
  'Mei',
  'Juni',
  'Juli',
  'Agustus',
  'September',
  'Oktober',
  'November',
  'Desember'
];
var someDateTime = DateTime.now();
var mon = someDateTime.month;
String formattedDate = DateFormat.y().format(someDateTime);
var active = 0;
int _buttonindex = 0;

final _pilih = [
  const Pelajaran(),
  const Ekstrakulikuler(),
];

class _KalenderJadwalState extends State<KalenderJadwal> {
  @override
  Widget build(BuildContext context) {
    print(formattedDate);
    print(months[mon]);
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Container(
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: SizedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: const BoxDecoration(
                      boxShadow: [boxShadows],
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(months[mon - 1], style: font20w6b),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(formattedDate, style: font20w6b)
                          ],
                        ),
                        const SizedBox(
                          height: 23,
                        ),
                        const SizedBox(
                          child: DatePicker(),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          child: Row(
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
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  decoration: BoxDecoration(
                                      color: _buttonindex == 0
                                          ? const Color(0xFF13005A)
                                          : const Color(0xFFD9D9D9),
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Text(
                                    'Pelajaran',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 13,
                                        color: _buttonindex == 0
                                            ? Colors.white
                                            : Colors.black),
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
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
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
                                    'Ekstrakulikuler',
                                    style: TextStyle(
                                        fontSize: 13,
                                        color: _buttonindex == 1
                                            ? Colors.white
                                            : Colors.black),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  _pilih[_buttonindex]
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
