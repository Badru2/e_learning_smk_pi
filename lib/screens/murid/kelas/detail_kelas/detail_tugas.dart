import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_learning_smk_pi/widgets/my_border.dart';
import 'package:e_learning_smk_pi/widgets/my_font.dart';
import 'package:e_learning_smk_pi/widgets/my_icons.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

List<File> images = [];
final picker = ImagePicker();

class DetailTugasText extends StatefulWidget {
  const DetailTugasText({super.key});

  @override
  State<DetailTugasText> createState() => _DetailTugasTextState();
}

class _DetailTugasTextState extends State<DetailTugasText> {
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
      body: Stack(
        children: [
          Positioned(
            top: 0,
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.95,
              height: MediaQuery.of(context).size.height * 0.3,
              child: Column(
                children: const <Widget>[
                  ListTile(
                    title: Text(
                      'Catatan :',
                      style: font20w6b,
                    ),
                  ),
                  ListTile(
                      title: Text(
                    'Silahkan pelajari dan tulis dibuku cataan kalian masing-masing materi berikut,pembahasanya akan disampaikan dalam pembelajaran tatap muka di kampus 2 nanti.',
                    style: font12w5,
                  )),
                  ListTile(
                      title: Text(
                    'Tugas :',
                    style: font20w6b,
                  ))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class DetailTugas extends StatefulWidget {
  const DetailTugas({super.key});

  @override
  State<DetailTugas> createState() => _DetailTugasState();
}

class _DetailTugasState extends State<DetailTugas> {
  final panelController = PanelController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SlidingUpPanel(
        controller: panelController,
        minHeight: images.isEmpty ? 140 : 240,
        maxHeight: images.isEmpty
            ? MediaQuery.of(context).size.height * 0.4
            : MediaQuery.of(context).size.height * 0.5,
        boxShadow: const [boxShadows],
        borderRadius: const BorderRadius.vertical(top: Radius.circular(10)),
        body: const DetailTugasText(),
        footer: images.isEmpty ? buttonPanelKosong() : buttonPanel(),
        panelBuilder: (controller) => PanelWidget(
          controller: controller,
          panelController: panelController,
        ),
      ),
    );
  }

  Widget buttonPanelKosong() => Container(
        color: Colors.white,
        padding: const EdgeInsets.fromLTRB(25, 0, 25, 20),
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              alignment: Alignment.center,
              fixedSize: Size(MediaQuery.of(context).size.width * 0.9,
                  MediaQuery.of(context).size.height * 0.06),
              backgroundColor: const Color(0xFF13005A),
            ),
            onPressed: () {
              getMultipImage();
            },
            child: Center(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                  Icon(Icons.add),
                  Center(
                      child: Text(
                    ' Tambahkan Tugas Kamu',
                    style: font12w6w,
                  ))
                ]))),
      );

  Widget buttonPanel() => Container(
        padding: const EdgeInsets.only(top: 30),
        color: Colors.white,
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(25, 0, 25, 20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    alignment: Alignment.center,
                    fixedSize: Size(MediaQuery.of(context).size.width * 0.9,
                        MediaQuery.of(context).size.height * 0.06),
                    backgroundColor: const Color(0xFF13005A)),
                onPressed: () {
                  getMultipImage();
                },
                child: Center(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                      Icon(Icons.add),
                      Center(
                          child: Text(
                        ' Tambahkan Tugas Kamu',
                        style: font12w6w,
                      ))
                    ])),
              ),
            ),
            Container(
                margin: const EdgeInsets.fromLTRB(25, 0, 25, 20),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        alignment: Alignment.center,
                        fixedSize: Size(MediaQuery.of(context).size.width * 0.9,
                            MediaQuery.of(context).size.height * 0.06),
                        backgroundColor: const Color(0xFF0066FF)),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                            title: const Center(
                                child: Text(
                                    'Apakah Anda Ingin Kirim Tugas Ini?',
                                    style: font12w5)),
                            titlePadding:
                                const EdgeInsets.only(top: 10, bottom: 20),
                            insetPadding: EdgeInsets.zero,
                            actionsAlignment: MainAxisAlignment.spaceAround,
                            actions: [
                              TextButton(
                                style: const ButtonStyle(
                                  backgroundColor: MaterialStatePropertyAll(
                                    Color(0xFFFF0000),
                                  ),
                                ),
                                onPressed: () => Navigator.pop(context),
                                child: const Text(
                                  'Tidak',
                                  style: font12w5,
                                ),
                              ),
                              TextButton(
                                  style: const ButtonStyle(
                                    backgroundColor: MaterialStatePropertyAll(
                                      Color(0xFF00FF38),
                                    ),
                                  ),
                                  onPressed: () async {
                                    Navigator.pop(context);
                                    for (int i = 0; i < images.length; i++) {
                                      String url = await uploadFile(images[i]);
                                    }
                                  },
                                  child: const Text(
                                    'Iya',
                                    style: font12w5,
                                  ))
                            ]),
                      );
                    },
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.send),
                          SizedBox(
                              child: Text(
                            '   Kirim Tugas',
                            style: font12w6w,
                          ))
                        ]))),
          ],
        ),
      );
}

getMultipImage() async {
  final List<XFile>? pickedImages = await picker.pickMultiImage();

  if (pickedImages != null) {
    pickedImages.forEach((e) {
      images.add(File(e.path));
    });

    // setState(() {});
  }
}

Future<String> uploadFile(File file) async {
  final metaData = SettableMetadata(contentType: 'image/jpeg');
  final storageRef = FirebaseStorage.instance.ref();
  Reference ref =
      storageRef.child('tugas/${DateTime.now().microsecondsSinceEpoch}.jpg');
  final uploadTask = ref.putFile(file, metaData);

  final taskSnapshot =
      await uploadTask.whenComplete(() => const CircularProgressIndicator());
  String url = await taskSnapshot.ref.getDownloadURL();
  return url;
}

storeEntry(List<String> imageUrls, String name) {
  FirebaseFirestore.instance
      .collection('tugas')
      .add({'image': imageUrls, 'name': name}).then((value) {
    Get.snackbar('Success', 'Data is stored successfully');
  });
}

class PanelWidget extends StatefulWidget {
  final ScrollController controller;
  final PanelController panelController;

  const PanelWidget({
    Key? key,
    required this.controller,
    required this.panelController,
  }) : super(key: key);

  @override
  State<PanelWidget> createState() => _PanelWidgetState();
}

class _PanelWidgetState extends State<PanelWidget> {
  @override
  Widget build(BuildContext context) => ListView(
        controller: widget.controller,
        padding: EdgeInsets.zero,
        children: <Widget>[
          const SizedBox(height: 20),
          buildAboutText(),
        ],
      );

  Widget buildAboutText() => Container(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: SizedBox(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          buildDragHandle(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Tugas Kamu',
                style: font19w6,
              ),
              Column(
                children: <Widget>[
                  const Text(
                    'Akhir Pengerjaan:',
                    style: font12w6,
                  ),
                  Container(
                      margin: const EdgeInsets.only(right: 35),
                      child: const Text(
                        '20-20-2023',
                        style: font12w6r,
                      ))
                ],
              )
            ],
          ),
          const SizedBox(height: 20),
          Container(
              child: images.isEmpty
                  ? SingleChildScrollView(child: tugasKosong())
                  : SizedBox(
                      height: MediaQuery.of(context).size.height * 0.2,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (ctx, i) {
                          return Column(
                            children: [
                              GestureDetector(
                                  onTap: () async {
                                    await showDialog(
                                        context: context,
                                        builder: (_) => Dialog(
                                                child: SizedBox(
                                              child: Image.file(images[i]),
                                            )));
                                  },
                                  child: Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.3,
                                      margin: const EdgeInsets.only(right: 10),
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.black,
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(7),
                                          child: Image.file(
                                            images[i],
                                            height: 100,
                                            fit: BoxFit.cover,
                                          )))),
                              Row(children: [
                                const SizedBox(
                                    child: Icon(
                                  Icons.image,
                                  color: Colors.red,
                                )),
                                const SizedBox(width: 5),
                                SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.18,
                                    child: Text(images[i].path.split('/').last,
                                        maxLines: 2,
                                        style: const TextStyle(
                                          fontSize: 9,
                                          fontFamily: 'Roboto',
                                        ))),
                                SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width * 0.1,
                                    child: TextButton(
                                        onPressed: () {
                                          // Delete(snapshot.images[snapshot.images.lenght - i - 1].entry),
                                          setState(() {
                                            images.removeAt(i);
                                          });
                                        },
                                        child: const Icon(
                                          Icons.close,
                                          color: Colors.black,
                                        )))
                              ]),
                            ],
                          );
                        },
                        itemCount: images.length,
                      ))),
          const SizedBox(
            height: 70,
          )
        ])),
      );

  Widget tugasKosong() => SizedBox(
        child: Column(
          children: [
            const Align(
                alignment: Alignment.centerLeft, child: Text('Lampiran tugas')),
            const SizedBox(height: 10),
            Center(
                child: Column(children: [
              SizedBox(
                child: SvgPicture.asset(iconBookCancel, height: 120),
              ),
              const SizedBox(height: 10),
              const Text(
                'Kamu belum Mengumpulkan tugas ini.',
                style: font10w5,
              )
            ]))
          ],
        ),
      );

  Widget buildDragHandle() => GestureDetector(
      onTap: togglePanel,
      child: Center(
          child: Container(
              width: 100,
              height: 3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Colors.black,
              ))));

  togglePanel() => widget.panelController.isPanelOpen
      ? widget.panelController.close()
      : widget.panelController.open();
}
