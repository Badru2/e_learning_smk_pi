import 'package:flutter/material.dart';
import 'kalender.dart';

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
