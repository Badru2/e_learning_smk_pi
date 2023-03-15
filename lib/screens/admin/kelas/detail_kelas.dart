import 'package:e_learning_smk_pi/screens/admin/sidebar_admin.dart';
import 'package:e_learning_smk_pi/widgets/appbar_admin.dart';
import 'package:e_learning_smk_pi/widgets/my_font.dart';
import 'package:e_learning_smk_pi/widgets/sidebar.dart';
import 'package:flutter/material.dart';

class DetailKelasAdmin extends StatefulWidget {
  const DetailKelasAdmin({super.key});

  @override
  State<DetailKelasAdmin> createState() => _DetailKelasAdminState();
}

class _DetailKelasAdminState extends State<DetailKelasAdmin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppbarAdmin(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.all(40),
            child: Column(
              children: [
                Row(
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF2A39D6),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: const EdgeInsets.fromLTRB(40, 23, 40, 23),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SideBarAdmin1(),
                            ));
                      },
                      child: Row(
                        children: const [
                          Text(
                            'MataPelajaran',
                            style: font40w6w,
                          ),
                          SizedBox(width: 40),
                          Icon(
                            Icons.ac_unit_outlined,
                            size: 40,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 20),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF119A47),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: const EdgeInsets.fromLTRB(30, 23, 30, 23),
                      ),
                      onPressed: () {},
                      child: Row(
                        children: const [
                          Icon(
                            Icons.add,
                            size: 40,
                          ),
                          SizedBox(width: 20),
                          Text(
                            'Tambah Siswa',
                            style: font40w6w,
                          ),
                          SizedBox(width: 40),
                          Icon(
                            Icons.ac_unit_outlined,
                            size: 40,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 20),
                    Container(
                      padding: const EdgeInsets.fromLTRB(30, 16, 30, 16),
                      decoration: BoxDecoration(
                        color: const Color(0xFFA946CC),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: const [
                          Text(
                            'Jadwal',
                            style: font40w6w,
                          ),
                          SizedBox(width: 30),
                          Icon(
                            Icons.ac_unit_rounded,
                            size: 40,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 20),
                    Container(
                      padding: const EdgeInsets.fromLTRB(30, 16, 30, 16),
                      decoration: BoxDecoration(
                        color: const Color(0xFFFFC239),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: const [
                          Text(
                            '35',
                            style: font40w6w,
                          ),
                          SizedBox(width: 30),
                          Icon(
                            Icons.ac_unit_rounded,
                            size: 40,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
