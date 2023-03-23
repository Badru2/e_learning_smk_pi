import 'package:e_learning_smk_pi/screens/guru/kelas/tambah_tugas/widget/deskripsi.dart';
import 'package:e_learning_smk_pi/screens/guru/kelas/tambah_tugas/widget/kirim.dart';
import 'package:e_learning_smk_pi/widgets/my_font.dart';
import 'package:flutter/material.dart';

class TambahMateriGuru extends StatefulWidget {
  const TambahMateriGuru({super.key});

  @override
  State<TambahMateriGuru> createState() => _TambahMateriGuruState();
}

class _TambahMateriGuruState extends State<TambahMateriGuru> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          'Kelas',
          style: font20w6b,
        ),
        actions: [
          Image.asset(
            'assets/image/image 1.png',
            scale: 1.5,
          )
        ],
        toolbarHeight: 60,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20),
              TextFormField(
                cursorColor: Colors.black,
                decoration: const InputDecoration(
                  hintText: 'Judul Materi',
                  hintStyle: font20w6b,
                  contentPadding: EdgeInsets.only(left: 20, bottom: 5),
                  enabledBorder: UnderlineInputBorder(),
                  focusedBorder: UnderlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: screenSize.width,
                child: Container(
                  margin: EdgeInsets.only(left: 20),
                  alignment: Alignment.centerLeft,
                  child: const Icon(Icons.person_2),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: screenSize.width,
                child: const DeskripsiTugas(),
              ),
              const SizedBox(height: 10),
              Container(
                width: screenSize.width,
                margin: EdgeInsets.only(left: 13),
                alignment: Alignment.centerLeft,
                child: TextButton(
                  onPressed: () {
                    showModalBottomSheet(
                      shape: const BeveledRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                      ),
                      backgroundColor: Colors.transparent,
                      context: context,
                      builder: (context) {
                        return Container(
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          padding: const EdgeInsets.only(top: 20),
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30),
                            ),
                            color: Colors.white,
                          ),
                          child: Wrap(
                            children: [
                              ListTile(
                                leading: const Icon(Icons.link),
                                title: TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                    showDialog(
                                      context: context,
                                      builder: (context) {
                                        return AlertDialog(
                                          title: const Text(
                                            'Tambah Link',
                                            style: font15w6,
                                          ),
                                          actions: [
                                            TextFormField(
                                              cursorColor:
                                                  const Color(0xFFD9D9D9),
                                              decoration: InputDecoration(
                                                focusColor: Colors.grey,
                                                contentPadding:
                                                    const EdgeInsets.only(
                                                        left: 10),
                                                hintText: 'URL',
                                                filled: true,
                                                hintStyle: font15w6,
                                                fillColor:
                                                    const Color(0xFFD9D9D9),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5)),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5)),
                                              ),
                                            ),
                                            Container(
                                              margin: const EdgeInsets.only(
                                                  left: 140),
                                              alignment: Alignment.centerRight,
                                              child: Row(
                                                children: [
                                                  TextButton(
                                                    onPressed: () {
                                                      Navigator.pop(context);
                                                    },
                                                    child: const Text(
                                                      'Batal',
                                                      style: font15w6,
                                                    ),
                                                  ),
                                                  const SizedBox(width: 10),
                                                  ElevatedButton(
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                      shape:
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          5)),
                                                      backgroundColor:
                                                          const Color(
                                                              0xFF0066FF),
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 30,
                                                              right: 30),
                                                    ),
                                                    onPressed: () {},
                                                    child: const Text('Kirim'),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                  },
                                  child: Container(
                                    alignment: Alignment.centerLeft,
                                    child: const Text(
                                      'Tambah Link',
                                      style: font15w6,
                                    ),
                                  ),
                                ),
                              ),
                              ListTile(
                                leading: const Icon(Icons.upload),
                                title: TextButton(
                                  onPressed: () {},
                                  child: Container(
                                    alignment: Alignment.centerLeft,
                                    child: const Text(
                                      'Unggah File',
                                      style: font15w6,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: screenSize.width,
                                color: Colors.black,
                                height: 2,
                                margin:
                                    const EdgeInsets.only(left: 20, right: 20),
                              ),
                              ListTile(
                                leading: const Icon(
                                  Icons.picture_as_pdf,
                                  color: Colors.red,
                                ),
                                title: TextButton(
                                  onPressed: () {},
                                  child: Container(
                                    alignment: Alignment.centerLeft,
                                    child: const Text(
                                      'Buat PDF Baru',
                                      style: font15w6,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        );
                      },
                    );
                  },
                  child: Row(
                    children: const [
                      Icon(
                        Icons.link,
                        color: Colors.black,
                      ),
                      SizedBox(width: 25),
                      Text(
                        'Tambah Materi',
                        style: font15w6,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 60),
              const Kirim(),
            ],
          ),
        ),
      ),
    );
  }
}
