import 'package:e_learning_smk_pi/screens/admin/tambah_berita/tambah_berita_screen.dart';
import 'package:e_learning_smk_pi/widgets/appbar_admin.dart';
import 'package:e_learning_smk_pi/widgets/my_font.dart';
import 'package:flutter/material.dart';

class BeritaAdmin extends StatelessWidget {
  const BeritaAdmin({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const AppbarAdmin(),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.fromLTRB(40, 20, 40, 20),
          child: Column(
            children: [
              SizedBox(
                width: screenSize.width,
                child: Container(
                  margin: const EdgeInsets.only(right: 90, bottom: 50),
                  alignment: Alignment.centerRight,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TambahBeritaScreen(),
                          ));
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      backgroundColor: const Color(0xFF367CFF),
                      padding: const EdgeInsets.fromLTRB(60, 20, 60, 20),
                    ),
                    child: const Text('Buat'),
                  ),
                ),
              ),
              SizedBox(
                width: screenSize.width,
                height: 220,
                child: Row(
                  children: [
                    Container(
                      width: 465,
                      height: 220,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'assets/image/Rectangle 40.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 20),
                      width: 1100,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              const SizedBox(
                                width: 900,
                                child: SizedBox(
                                  // width: 300,
                                  // height: 100,
                                  child: Text(
                                    'Juara Paduan Suara Sejawa barat!!',
                                    style: font50w6b,
                                  ),
                                ),
                              ),
                              Container(
                                // width: 400,
                                child: Row(
                                  children: [
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        fixedSize: const Size.fromHeight(50),
                                        backgroundColor:
                                            const Color(0xFFFF0000),
                                        padding: EdgeInsets.zero,
                                      ),
                                      onPressed: () {},
                                      child: const Icon(
                                        Icons.delete,
                                        color: Colors.black,
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        fixedSize: const Size.fromHeight(50),
                                        backgroundColor:
                                            const Color(0xFFFFA700),
                                        padding: EdgeInsets.zero,
                                      ),
                                      onPressed: () {},
                                      child: const Icon(
                                        Icons.edit,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 30),
                            child: const Text(
                              'Siswa/Siswi SMK PI Berhasil menjuarai lomba paduan suara seJawa barat pada tanggal 26/2/2023 ,siswa siswi yang membanggakan ini diberi beasiswa selama 3 bulan karena telah membanggakan nama sekolah.',
                              style: font20w6b,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 50),
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.lock_clock,
                                  size: 20,
                                ),
                                Text(
                                  '20-11-2022',
                                  style: font20w6b,
                                ),
                                Text(
                                  '|',
                                  style: font20w6b,
                                ),
                                Text(
                                  'Osis SMK PI',
                                  style: font20w6b,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
