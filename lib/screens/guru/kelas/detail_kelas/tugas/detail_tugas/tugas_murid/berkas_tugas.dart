import 'package:e_learning_smk_pi/widgets/my_border.dart';
import 'package:e_learning_smk_pi/widgets/my_font.dart';
import 'package:flutter/material.dart';

class BerkasTugas extends StatelessWidget {
  const BerkasTugas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text('Berkas Tugas', style: font20w6b),
        actions: [Image.asset('assets/image/image 1.png', scale: 1.5)],
        toolbarHeight: 60,
      ),
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: Column(
              children: [
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: Image.asset('assets/image/voidProfile.png'),
                  title: const Text(
                    'Effendy Gabriel Putra',
                    style: font20w6b,
                  ),
                  subtitle: const Text(
                    'Sudah Selesai',
                    style: font12w6,
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: TextButton(
                      onPressed: () {},
                      child: Image.asset('assets/image/image 6.png'),
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: TextButton(
                      onPressed: () {},
                      child: Row(
                        children: const [
                          Icon(
                            Icons.document_scanner,
                            color: Colors.red,
                          ),
                          SizedBox(width: 10),
                          Text(
                            'Tugas Deret Aritmatika.Pptx',
                            style: font15w6,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 15,
            left: 15,
            child: Container(
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.black, width: 2),
              ),
              alignment: Alignment.bottomCenter,
              child: Row(
                children: [
                  Container(
                    margin:
                        const EdgeInsets.only(bottom: 14, left: 10, top: 13),
                    width: 230,
                    height: 40,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        labelStyle: font15w6,
                        suffixText: '/100',
                        suffixStyle: font15w6,
                        labelText: 'Nilai',
                        // border: OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                        bottom: 14, left: 20, top: 13, right: 20),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                        backgroundColor: Color(0xFF367CFF),
                      ),
                      onPressed: () {},
                      child: const Text('Kirim'),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
