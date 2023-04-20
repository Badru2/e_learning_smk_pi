import 'package:e_learning_smk_pi/widgets/my_border.dart';
import 'package:e_learning_smk_pi/widgets/my_font.dart';
import 'package:e_learning_smk_pi/widgets/sidebar.dart';
import 'package:flutter/material.dart';

class TambahBerita extends StatefulWidget {
  const TambahBerita({super.key});

  @override
  State<TambahBerita> createState() => _TambahBeritaState();
}

class _TambahBeritaState extends State<TambahBerita> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: SingleChildScrollView(
        child: SizedBox(
          child: Column(
            children: [
              Row(
                children: [
                  const SizedBox(width: 30),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.3,
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            margin: const EdgeInsets.only(left: 20),
                            child: const Text(
                              'Tambah Berita',
                              style: font30w7,
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFD9D9D9),
                            padding: const EdgeInsets.fromLTRB(70, 35, 70, 35),
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
                      ],
                    ),
                  ),
                  const SizedBox(width: 50),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: Column(
                      children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              margin: const EdgeInsets.only(left: 20),
                              child: const Text(
                                'Tambah Judul',
                                style: font30w7,
                              ),
                            )),
                        TextFormField(
                          textInputAction: TextInputAction.next,
                          cursorColor: Colors.black,
                          style: const TextStyle(fontSize: 25),
                          decoration: InputDecoration(
                            hintText: 'Tambah Judul',
                            contentPadding: const EdgeInsets.all(20),
                            enabledBorder: enabledBorderB2,
                            focusedBorder: focusedBorderB2,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: const BorderSide(
                                color: Colors.black,
                                width: 1,
                              ),
                            ),
                          ),
                        ),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              margin: const EdgeInsets.only(top: 20, left: 20),
                              child: const Text(
                                'Nama Penulis',
                                style: font30w7,
                              ),
                            )),
                        TextFormField(
                          textInputAction: TextInputAction.next,
                          cursorColor: Colors.black,
                          style: const TextStyle(fontSize: 25),
                          decoration: InputDecoration(
                            hintText: 'Nama Penulis',
                            contentPadding: const EdgeInsets.all(20),
                            enabledBorder: enabledBorderB2,
                            focusedBorder: focusedBorderB2,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: const BorderSide(
                                color: Colors.black,
                                width: 1,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: const EdgeInsets.all(10),
                  child: const Text(
                    'Deskripsi',
                    style: font30w7,
                  ),
                ),
              ),
              TextFormField(
                cursorColor: Colors.black,
                minLines:
                    14, // any number you need (It works as the rows for the textarea)
                keyboardType: TextInputType.multiline,
                maxLines: null,
                decoration: InputDecoration(
                  enabledBorder: enabledBorderB2,
                  focusedBorder: focusedBorderB2,
                  alignLabelWithHint: true,
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 2,
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(height: 20),
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
                          'Apakah Anda Yakin Ingin MengUpload Ini?',
                          style: font12w5,
                        ),
                        titlePadding: const EdgeInsets.only(
                            top: 20, bottom: 20, left: 20),
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
                            // Perintah Kosong -->
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SideBarAdmin(),
                                  ));
                            },
                            // Perintah Kosong <--
                            // onPressed: () async {
                            //   //// Perintah Backend buat logOut -->
                            //   //
                            //   //// Perintah Backend buat logOut <--
                            // },
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
      ),
    );
  }
}
