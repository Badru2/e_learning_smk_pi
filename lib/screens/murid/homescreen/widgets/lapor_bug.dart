import 'package:e_learning_smk_pi/widgets/my_font.dart';
import 'package:flutter/material.dart';

class LaporBug extends StatefulWidget {
  const LaporBug({super.key});

  @override
  State<LaporBug> createState() => _LaporBugState();
}

class _LaporBugState extends State<LaporBug> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          'Laporkan Bug',
          style: TextStyle(
            fontFamily: 'Outfit',
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        toolbarHeight: 60,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              child: Column(
                children: [
                  const ListTile(
                    title: Text(
                      'Laporan Bug',
                      style: font19w6,
                    ),
                    contentPadding: EdgeInsets.zero,
                  ),
                  TextFormField(
                    minLines:
                        6, // any number you need (It works as the rows for the textarea)
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    decoration: InputDecoration(
                      alignLabelWithHint: true,
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(
                          width: 2,
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintText:
                          'Deskripsikan Bug Yang Anda Temukan Dengan Detail......',
                      hintStyle: font10w6,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const ListTile(
                    title: Text(
                      'Silahkan laporkan jika anda mendapakan masalah sistem pada aplikasi kami,itu akan sangat membantu kita untuk terus meningkatkan pengalaman anda ketika menggunakan aplikasi kami :>',
                      style: font11w5,
                    ),
                    contentPadding: EdgeInsets.zero,
                  ),
                  const SizedBox(height: 20),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.only(
                            top: 10, bottom: 10, left: 15, right: 15),
                        backgroundColor: const Color(0xFF0066FF),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Kirim',
                        style: font15w6w,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
