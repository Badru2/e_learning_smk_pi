import 'package:e_learning_smk_pi/responsive.dart';
import 'package:e_learning_smk_pi/screens/admin/tambah_berita/iklan.dart';
import 'package:e_learning_smk_pi/screens/admin/tambah_berita/tambah_berita.dart';
import 'package:e_learning_smk_pi/widgets/appbar_admin.dart';
import 'package:e_learning_smk_pi/widgets/my_font.dart';
import 'package:flutter/material.dart';

class TambahBeritaScreen extends StatefulWidget {
  const TambahBeritaScreen({super.key});

  @override
  State<TambahBeritaScreen> createState() => _TambahBeritaScreenState();
}

class _TambahBeritaScreenState extends State<TambahBeritaScreen> {
  int _buttonIndex = 0;

  final _select = [
    // Berita
    const TambahBerita(),
    // Iklan
    const Iklan(),
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Responsive(
          desktop: Scaffold(
            // appBar: AppBar(
            //   titleSpacing: 20,
            //   leadingWidth: 100,
            //   leading: Image.asset('assets/image/image 1.png', scale: 1.5),
            //   title: const Text('SMK PI', style: font30w7),
            //   toolbarHeight: 80,
            //   actions: [
            //     IconButton(
            //       onPressed: () {},
            //       icon: const Icon(
            //         Icons.exit_to_app,
            //         color: Colors.red,
            //       ),
            //     ),
            //     const SizedBox(width: 20),
            //   ],
            //   automaticallyImplyLeading: false,
            //   backgroundColor: Colors.white,
            // ),
            appBar: const AppbarAdmin(),
            body: SingleChildScrollView(
              child: Container(
                margin: const EdgeInsets.only(
                    top: 40, left: 40, right: 70, bottom: 20),
                child: Column(
                  children: [
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              _buttonIndex = 0;
                            });
                          },
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(100, 5, 100, 10),
                            decoration: BoxDecoration(
                                color: _buttonIndex == 0
                                    ? const Color(0xFF13005A)
                                    : const Color(0xFFD9D9D9),
                                borderRadius: BorderRadius.circular(5)),
                            child: Text(
                              'Berita',
                              style: TextStyle(
                                fontSize: 30,
                                color: _buttonIndex == 0
                                    ? Colors.white
                                    : Colors.black,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 20),
                        InkWell(
                          onTap: () {
                            setState(() {
                              _buttonIndex = 1;
                            });
                          },
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(100, 5, 100, 10),
                            decoration: BoxDecoration(
                                color: _buttonIndex == 1
                                    ? const Color(0xFF13005A)
                                    : const Color(0xFFD9D9D9),
                                borderRadius: BorderRadius.circular(5)),
                            child: Text(
                              'Iklan',
                              style: TextStyle(
                                fontSize: 30,
                                color: _buttonIndex == 1
                                    ? Colors.white
                                    : Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    _select[_buttonIndex],
                  ],
                ),
              ),
            ),
          ),
          large: Scaffold(
            appBar: AppBar(
              titleSpacing: 20,
              leadingWidth: 100,
              leading: Image.asset('assets/image/image 1.png', scale: 1.5),
              title: const Text('SMK PI', style: font30w7),
              toolbarHeight: 70,
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.exit_to_app,
                    color: Colors.red,
                  ),
                ),
                const SizedBox(width: 20),
              ],
              automaticallyImplyLeading: false,
              backgroundColor: Colors.white,
            ),
            body: SingleChildScrollView(
              child: Container(
                margin: const EdgeInsets.only(
                    top: 40, left: 40, right: 70, bottom: 20),
                child: Column(
                  children: [
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              _buttonIndex = 0;
                            });
                          },
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(100, 5, 100, 10),
                            decoration: BoxDecoration(
                                color: _buttonIndex == 0
                                    ? const Color(0xFF13005A)
                                    : const Color(0xFFD9D9D9),
                                borderRadius: BorderRadius.circular(5)),
                            child: Text(
                              'News',
                              style: TextStyle(
                                fontSize: 20,
                                color: _buttonIndex == 0
                                    ? Colors.white
                                    : Colors.black,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 20),
                        InkWell(
                          onTap: () {
                            setState(() {
                              _buttonIndex = 1;
                            });
                          },
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(100, 5, 100, 10),
                            decoration: BoxDecoration(
                                color: _buttonIndex == 1
                                    ? const Color(0xFF13005A)
                                    : const Color(0xFFD9D9D9),
                                borderRadius: BorderRadius.circular(5)),
                            child: Text(
                              'Iklan',
                              style: TextStyle(
                                fontSize: 20,
                                color: _buttonIndex == 1
                                    ? Colors.white
                                    : Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    _select[_buttonIndex],
                  ],
                ),
              ),
            ),
          ),
          tablet: Container(),
          mobile: Container(),
        ),
      ],
    );
  }
}
