import 'package:e_learning_smk_pi/screens/admin/jadwal_screen/kelas_xi.dart';
import 'package:e_learning_smk_pi/screens/admin/kelas/widget/kelas_x.dart';
import 'package:e_learning_smk_pi/screens/admin/kelas/widget/kelas_xi.dart';
import 'package:e_learning_smk_pi/screens/admin/kelas/widget/kelas_xii.dart';
import 'package:e_learning_smk_pi/widgets/appbar_admin.dart';
import 'package:e_learning_smk_pi/widgets/my_font.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class JadwalAdmin extends StatelessWidget {
  const JadwalAdmin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppbarAdmin(),
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Jadwal Pelajaran',
                      style: font30w7,
                    ),
                  ),
                ),
                // SizedBox(
                //   width: MediaQuery.of(context).size.width,
                //   child: Align(
                //     alignment: Alignment.centerRight,
                //     child: ElevatedButton(
                //       style: ElevatedButton.styleFrom(
                //         fixedSize: const Size(200, 41),
                //         backgroundColor: const Color(0xFF119A47),
                //       ),
                //       onPressed: () {
                //         Navigator.push(
                //             context,
                //             MaterialPageRoute(
                //               builder: (context) => const TambahKelasAdmin(),
                //             ));
                //       },
                //       child: Row(
                //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //         children: const [
                //           Icon(Icons.add),
                //           Text('Tambah Kelas'),
                //         ],
                //       ),
                //     ),
                //   ),
                // ),
                const SizedBox(height: 20),
                const KelasX(),
                const SizedBox(height: 20),
                const KelasXIAdmin(),
                const SizedBox(height: 20),
                const KelasXII(),
                // Container(
                //   decoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(10),
                //   ),
                //   width: MediaQuery.of(context).size.width,
                //   height: MediaQuery.of(context).size.height * 0.9,
                //   child: DataTable2(
                //     columns: [
                //       DataColumn2(
                //         label: Text('Kelas X'),
                //       )
                //     ],
                //     rows: [
                //       DataRow2(cells: [
                //         DataCell(Text('Udin')),
                //       ])
                //     ],
                //   ),
                // )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
