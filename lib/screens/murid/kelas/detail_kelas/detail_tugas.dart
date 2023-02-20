import 'package:e_learning_smk_pi/widgets/my_border.dart';
import 'package:e_learning_smk_pi/widgets/my_font.dart';
import 'package:e_learning_smk_pi/widgets/my_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class DetailTugasText extends StatelessWidget {
  const DetailTugasText({super.key});

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
                    ),
                  ),
                  ListTile(
                    title: Text(
                      'Tugas :',
                      style: font20w6b,
                    ),
                  ),
                ],
              ),
            ),
          ),
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
        minHeight: 140,
        maxHeight: MediaQuery.of(context).size.height * 0.45,
        boxShadow: const [boxShadows],
        borderRadius: const BorderRadius.vertical(top: Radius.circular(10)),
        body: const DetailTugasText(),
        footer: Container(color: Colors.white, child: buttonPanel()),
        panelBuilder: (controller) => PanelWidget(
          controller: controller,
          panelController: panelController,
        ),
      ),
    );
  }

  Widget buttonPanel() => Container(
        margin: const EdgeInsets.fromLTRB(25, 0, 25, 20),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            alignment: Alignment.center,
            fixedSize: Size(
              MediaQuery.of(context).size.width * 0.9,
              MediaQuery.of(context).size.height * 0.06,
            ),
            backgroundColor: const Color(0xFF13005A),
          ),
          onPressed: () {},
          child: const SizedBox(
            child: Text(
              '+ '
              'Tambahkan Tugas Kamu',
              style: font12w6w,
            ),
          ),
        ),
      );
}

class PanelWidget extends StatelessWidget {
  final ScrollController controller;
  final PanelController panelController;

  const PanelWidget({
    Key? key,
    required this.controller,
    required this.panelController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => ListView(
        controller: controller,
        padding: EdgeInsets.zero,
        children: <Widget>[
          const SizedBox(height: 20),
          buildAboutText(),
        ],
      );

  Widget buildAboutText() => Container(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildDragHandle(),
            // SizedBox(height: 10),
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
                      ),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(height: 20),
            tugasKosong(),
            const SizedBox(
              height: 70,
            ),
          ],
        ),
      );

  Widget tugasKosong() => Column(
        children: [
          const Align(
              alignment: Alignment.centerLeft, child: Text('Lampiran tugas')),
          const SizedBox(height: 10),
          Center(
            child: Column(
              children: [
                SizedBox(
                  child: SvgPicture.asset(iconBookCancel, height: 120),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Kamu belum Mengumpulkan tugas ini.',
                  style: font10w5,
                )
              ],
            ),
          ),
        ],
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
            ),
          ),
        ),
      );
  void togglePanel() => panelController.isPanelOpen
      ? panelController.close()
      : panelController.open();
}
