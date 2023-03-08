import 'package:e_learning_smk_pi/widgets/my_font.dart';
import 'package:flutter/material.dart';

class Iklan extends StatefulWidget {
  const Iklan({super.key});

  @override
  State<Iklan> createState() => _IklanState();
}

class _IklanState extends State<Iklan> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(30, 20, 60, 20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                padding: const EdgeInsets.fromLTRB(370, 230, 370, 230),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                    side: const BorderSide(
                      color: Colors.black,
                      width: 3,
                    )),
              ),
              child: Column(
                children: const [
                  Icon(
                    Icons.add,
                    size: 90,
                    color: Colors.grey,
                  ),
                  Text(
                    'Tambah Gambar',
                    style: font30w7gr,
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Align(
              alignment: Alignment.centerRight,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.only(
                      top: 15, bottom: 15, left: 35, right: 35),
                  backgroundColor: const Color(0xFF367CFF),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text(
                        'Apakah Anda Yakin Ingin Mengupload Ini?',
                        style: font12w5,
                      ),
                      titlePadding:
                          const EdgeInsets.only(top: 20, bottom: 20, left: 20),
                      // insetPadding: const EdgeInsets.all(30),
                      actionsPadding:
                          const EdgeInsets.only(top: 30, bottom: 20),
                      actionsAlignment: MainAxisAlignment.spaceAround,
                      actions: [
                        //// Tombol batal -->
                        TextButton(
                          style: const ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                              Color(0xFFFF0000),
                            ),
                          ),
                          onPressed: () => Navigator.pop(context),
                          child: const Text(
                            'Tidak',
                            // font12w5 diambil buat textStyle dari file "my_font.dart"
                            style: font12w5,
                          ),
                        ),
                        //// Tombol batal <--
                        /// Tombol Iya -->
                        TextButton(
                          style: const ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                              Color(0xFF00FF38),
                            ),
                          ),
                          //// Perintah Kosong -->
                          // onPressed: () {}
                          //// Perintah Kosong <--
                          onPressed: () async {
                            //// Perintah Backend buat logOut -->

                            //// Perintah Backend buat logOut <--
                          },
                          child: const Text(
                            'Iya',
                            style: font12w5,
                          ),
                        ),
                        //// Tombol Iya <--
                      ],
                    ),
                  );
                },
                child: const Text(
                  'Kirim',
                  style: font15w6w,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
