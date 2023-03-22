import 'package:e_learning_smk_pi/screens/guru/tugas/widget/calendar.dart';
import 'package:e_learning_smk_pi/screens/guru/tugas/widget/deskripsi.dart';
import 'package:e_learning_smk_pi/screens/guru/tugas/widget/kirim.dart';
import 'package:e_learning_smk_pi/screens/guru/tugas/widget/link.dart';
import 'package:e_learning_smk_pi/screens/guru/tugas/widget/rectangle.dart';
import 'package:e_learning_smk_pi/screens/guru/tugas/widget/task_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class TambahTugasScreenGuru extends StatefulWidget {
  const TambahTugasScreenGuru({super.key});

  @override
  State<TambahTugasScreenGuru> createState() => _TambahTugasScreenGuruState();
}

class _TambahTugasScreenGuruState extends State<TambahTugasScreenGuru> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: const [
              SizedBox(
                height: 20,
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
