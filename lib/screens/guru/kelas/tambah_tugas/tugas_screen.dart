import 'package:e_learning_smk_pi/screens/guru/kelas/tambah_tugas/widget/calendar.dart';
import 'package:e_learning_smk_pi/screens/guru/kelas/tambah_tugas/widget/deskripsi.dart';
import 'package:e_learning_smk_pi/screens/guru/kelas/tambah_tugas/widget/judul.dart';
import 'package:e_learning_smk_pi/screens/guru/kelas/tambah_tugas/widget/kirim.dart';
import 'package:e_learning_smk_pi/screens/guru/kelas/tambah_tugas/widget/link.dart';
import 'package:e_learning_smk_pi/screens/guru/kelas/tambah_tugas/widget/task_list.dart';
import 'package:e_learning_smk_pi/widgets/my_font.dart';
import 'package:flutter/material.dart';

class TambahTugasScreenGuru extends StatefulWidget {
  const TambahTugasScreenGuru({super.key});

  @override
  State<TambahTugasScreenGuru> createState() => _TambahTugasScreenGuruState();
}

class _TambahTugasScreenGuruState extends State<TambahTugasScreenGuru> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        title: const Text(
          'Kelas',
          style: font22w7b,
        ),
        actions: [
          Image.asset(
            'assets/image/image 1.png',
            scale: 2,
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: const [
              SizedBox(height: 20),
              JudulTugasGuru(),
              SizedBox(
                height: 40,
              ),
              DeskripsiTugas(),
              SizedBox(
                height: 23,
              ),
              LinkTugas(),
              SizedBox(
                height: 23,
              ),
              TaskListTugas(),
              SizedBox(
                height: 23,
              ),
              CalendarTugas(),
              SizedBox(
                height: 69,
              ),
              Kirim(),
              SizedBox(
                height: 242,
              ),
              // RectangleTugas(),
            ],
          ),
        ),
      ),
    );
  }
}
