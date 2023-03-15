import 'package:data_table_2/data_table_2.dart';
import 'package:e_learning_smk_pi/screens/admin/kelas/tambah_kelas.dart';
import 'package:e_learning_smk_pi/screens/admin/kelas/widget/kelas_x.dart';
import 'package:e_learning_smk_pi/screens/admin/kelas/widget/kelas_xi.dart';
import 'package:e_learning_smk_pi/screens/admin/kelas/widget/kelas_xii.dart';
import 'package:e_learning_smk_pi/widgets/appbar_admin.dart';
import 'package:flutter/material.dart';

class KelasScreenAdmin extends StatefulWidget {
  const KelasScreenAdmin({super.key});

  @override
  State<KelasScreenAdmin> createState() => _KelasScreenAdminState();
}

class _KelasScreenAdminState extends State<KelasScreenAdmin> {
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
                    alignment: Alignment.centerRight,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        fixedSize: const Size(200, 41),
                        backgroundColor: const Color(0xFF119A47),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const TambahKelasAdmin(),
                            ));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Icon(Icons.add),
                          Text('Tambah Kelas'),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const KelasX(),
                const SizedBox(height: 20),
                const KelasXI(),
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
