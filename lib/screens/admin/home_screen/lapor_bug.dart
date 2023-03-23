import 'package:e_learning_smk_pi/widgets/my_font.dart';
import 'package:e_learning_smk_pi/widgets/my_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

class LaporBugAdmin extends StatefulWidget {
  const LaporBugAdmin({super.key});

  @override
  State<LaporBugAdmin> createState() => _LaporBugAdminState();
}

class _LaporBugAdminState extends State<LaporBugAdmin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          toolbarHeight: 80,
          leading: Image.asset('assets/image/image 1.png'),
          title: const Text(
            'SMK PI',
            style: font30w7,
          ),
          leadingWidth: 90,
          actions: [
            SizedBox(
              width: 50,
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(20, 30),
                  padding: EdgeInsets.zero,
                  visualDensity: VisualDensity(horizontal: -4, vertical: -4),
                  backgroundColor: const Color(0xFFEE1414),
                ),
                child: const Icon(Icons.logout),
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.all(40),
            child: Column(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 30),
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Icon(
                            Icons.arrow_back,
                            color: Colors.black,
                            size: 50,
                          ),
                        ),
                        const Text(
                          'Laporan Bug',
                          style: font50w6b,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.9,
                  child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Container(
                        padding: const EdgeInsets.all(20),
                        margin: const EdgeInsets.only(top: 10),
                        width: MediaQuery.of(context).size.width,
                        // height: 100,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 4),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'Awaysha Cessarusmana',
                                  style: font30w7,
                                ),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    fixedSize: Size(20, 50),
                                    padding: EdgeInsets.zero,
                                    backgroundColor: const Color(0xFFFF0000),
                                  ),
                                  onPressed: () {},
                                  child: const Icon(Icons.delete),
                                ),
                              ],
                            ),
                            const SizedBox(height: 30),
                            SizedBox(
                              width: MediaQuery.of(context).size.width,
                              child: Container(
                                alignment: Alignment.centerLeft,
                                child: const Text(
                                  'ada error saat pengiriman tugas, siswa harus mengirim tugas 2 kali agar bisa terkirim.',
                                  style: font20w6b,
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
