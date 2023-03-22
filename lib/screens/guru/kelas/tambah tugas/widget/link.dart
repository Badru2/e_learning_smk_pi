import 'package:e_learning_smk_pi/widgets/my_border.dart';
import 'package:e_learning_smk_pi/widgets/my_font.dart';
import 'package:flutter/material.dart';

class LinkTugas extends StatelessWidget {
  const LinkTugas({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
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
                                  cursorColor: const Color(0xFFD9D9D9),
                                  decoration: InputDecoration(
                                    focusColor: Colors.grey,
                                    contentPadding:
                                        const EdgeInsets.only(left: 10),
                                    hintText: 'URL',
                                    filled: true,
                                    hintStyle: font15w6,
                                    fillColor: const Color(0xFFD9D9D9),
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5)),
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5)),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(left: 140),
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
                                        style: ElevatedButton.styleFrom(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5)),
                                          backgroundColor:
                                              const Color(0xFF0066FF),
                                          padding: const EdgeInsets.only(
                                              left: 30, right: 30),
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
                  )
                ],
              ),
            );
          },
        );
      },
      child: Container(
        padding: const EdgeInsets.only(left: 10),
        alignment: Alignment.bottomLeft,
        child: Row(
          children: [
            InkWell(
              onTap: () {},
              child: const Icon(
                Icons.link,
                size: 30,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              width: 22,
            ),
            const Center(
              child: Text(
                'Tambah Tugas',
                style: TextStyle(
                  fontFamily: 'Outfit',
                  fontSize: 14,
                  color: Color(0xFF000000),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
