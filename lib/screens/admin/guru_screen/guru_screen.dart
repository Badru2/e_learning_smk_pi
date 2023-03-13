import 'package:data_table_2/data_table_2.dart';
import 'package:e_learning_smk_pi/widgets/appbar_admin.dart';
import 'package:e_learning_smk_pi/widgets/my_font.dart';
import 'package:e_learning_smk_pi/widgets/my_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GuruScreenAdmin extends StatefulWidget {
  const GuruScreenAdmin({super.key});

  @override
  State<GuruScreenAdmin> createState() => _GuruScreenAdminState();
}

class _GuruScreenAdminState extends State<GuruScreenAdmin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarAdmin(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.all(15),
            child: Column(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      width: 180,
                      height: 50,
                      margin: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: const Color(0xFF2A39D6),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Text(
                            '75 Guru',
                            style: font20w6,
                          ),
                          Icon(
                            Icons.data_array,
                            size: 30,
                            color: Color(0xFF0A0717),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.9,
                  child: DataTable2(
                    border: const TableBorder(
                      verticalInside: BorderSide(
                        color: Colors.black,
                      ),
                      horizontalInside: BorderSide(
                        color: Colors.black,
                      ),
                      bottom: BorderSide(
                        width: 2,
                        color: Colors.black,
                      ),
                      left: BorderSide(
                        width: 2,
                        color: Colors.black,
                      ),
                      right: BorderSide(
                        width: 2,
                        color: Colors.black,
                      ),
                      top: BorderSide(
                        width: 2,
                        color: Colors.black,
                      ),
                    ),
                    headingRowColor:
                        const MaterialStatePropertyAll(Color(0xFFD9D9D9)),
                    columns: const [
                      DataColumn2(
                        label: Text(
                          'Kode',
                          style: font20w6b,
                        ),
                        size: ColumnSize.S,
                        fixedWidth: 80,
                      ),
                      DataColumn2(
                        label: Text(
                          'Nama',
                          style: font20w6b,
                        ),
                        size: ColumnSize.L,
                      ),
                      DataColumn2(
                        label: Text(
                          'E-Mail',
                          style: font20w6b,
                        ),
                        size: ColumnSize.L,
                      ),
                      DataColumn2(
                        label: Text(
                          'Mata Pelajaran',
                          style: font20w6b,
                        ),
                        size: ColumnSize.L,
                      ),
                      DataColumn2(
                        label: Text(
                          'Wali Kelas',
                          style: font20w6b,
                        ),
                        size: ColumnSize.L,
                      ),
                      DataColumn2(
                        label: Text(
                          'JK',
                          style: font20w6b,
                        ),
                        size: ColumnSize.M,
                      ),
                      DataColumn2(
                        label: Text(
                          'Detail',
                          style: font20w6b,
                        ),
                        size: ColumnSize.S,
                        fixedWidth: 90,
                      ),
                    ],
                    rows: List<DataRow>.generate(
                      20,
                      (index) => DataRow(
                        cells: [
                          const DataCell(Center(
                              child: Text(
                            'A',
                            style: font15w6,
                          ))),
                          DataCell(Text('B' * (10 - index % 10))),
                          DataCell(Text('B' * (10 - index % 10))),
                          DataCell(Text('B' * (10 - index % 10))),
                          DataCell(Text('B' * (10 - index % 10))),
                          DataCell(Text('B' * (10 - index % 10))),
                          DataCell(
                            Center(
                              child: ElevatedButton(
                                onPressed: () {
                                  showDialog(
                                    context: context,
                                    builder: (context) {
                                      return const AlertDialog(
                                        title: Text('HE He Boay'),
                                      );
                                    },
                                  );
                                },
                                child: const Icon(Icons.ac_unit_outlined),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
