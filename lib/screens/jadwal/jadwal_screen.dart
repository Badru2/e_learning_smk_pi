import 'package:e_learning_smk_pi/screens/jadwal/kalender.dart';
import 'package:e_learning_smk_pi/widgets/bottom_navigation_bar.dart';
import 'package:e_learning_smk_pi/widgets/navbar.dart';
import 'package:flutter/material.dart';

class JadwalScreen extends StatefulWidget {
  const JadwalScreen({super.key});

  @override
  State<JadwalScreen> createState() => _JadwalScreenState();
}

class _JadwalScreenState extends State<JadwalScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: KalenderJadwal()),
      // bottomNavigationBar: Navbar(),
    );
  }
}
