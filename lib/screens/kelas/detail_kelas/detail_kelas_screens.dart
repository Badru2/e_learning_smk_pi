import 'package:e_learning_smk_pi/screens/jadwal/ekstrakulikuler.dart';
import 'package:e_learning_smk_pi/screens/jadwal/pelajaran.dart';
import 'package:flutter/material.dart';

class DetailKelasScreens extends StatefulWidget {
  const DetailKelasScreens({super.key});

  @override
  State<DetailKelasScreens> createState() => _DetailKelasScreensState();
}

class _DetailKelasScreensState extends State<DetailKelasScreens> {
  int _buttonindex = 0;

  final _pilih = [
    const Pelajaran(),
    const Ekstrakulikuler(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          'Matematika',
          style: TextStyle(
            fontFamily: 'Outfit',
            fontSize: 30,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        toolbarHeight: 60,
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.9,
            child: Image.asset('assets/image/Rectangle 92.png'),
          ),
          const SizedBox(height: 20),
          SizedBox(
            child: Column(
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
                          padding: const EdgeInsets.symmetric(
                            vertical: 7,
                            horizontal: 10,
                          ),
                          width: MediaQuery.of(context).size.width * 0.4,
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
                          width: MediaQuery.of(context).size.width * 0.4,
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
                const SizedBox(
                  height: 20,
                ),
                _pilih[_buttonindex],
              ],
            ),
          ),
        ],
      ),
    );
  }
}
