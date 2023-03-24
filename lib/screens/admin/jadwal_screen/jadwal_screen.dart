import 'package:data_table_2/paginated_data_table_2.dart';
import 'package:e_learning_smk_pi/widgets/appbar_admin.dart';
import 'package:e_learning_smk_pi/widgets/my_font.dart';
import 'package:flutter/material.dart';

class JadwalScreenKelasAdmin extends StatefulWidget {
  const JadwalScreenKelasAdmin({super.key});

  @override
  State<JadwalScreenKelasAdmin> createState() => _JadwalScreenKelasAdminState();
}

class _JadwalScreenKelasAdminState extends State<JadwalScreenKelasAdmin> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: const AppbarAdmin(),
      body: SingleChildScrollView(
        child: Container(
          width: screenSize.width,
          margin: const EdgeInsets.all(60),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(right: 80),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.keyboard_arrow_left_sharp,
                            size: 30,
                          ),
                        ),
                        const SizedBox(width: 40),
                        const Text(
                          'Jadwal Pelajaran',
                          style: font30w7,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Text(
                          'XI RPL',
                          style: font30w7,
                        ),
                        const SizedBox(width: 40),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFFA946CC),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              padding:
                                  const EdgeInsets.fromLTRB(10, 20, 10, 20)),
                          onPressed: () {},
                          child: Row(
                            children: const [
                              Text(
                                'Edit Jadwal',
                                style: font30w7w,
                              ),
                              SizedBox(width: 20),
                              Icon(
                                Icons.ac_unit_outlined,
                                size: 30,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(80, 20, 80, 0),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.9,
                  child: DataTable2(
                    border: const TableBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
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
                          'Jam Ke -',
                          style: font20w6b,
                        ),
                        size: ColumnSize.S,
                        fixedWidth: 120,
                      ),
                      DataColumn2(
                        label: Text(
                          'Waktu',
                          style: font20w6b,
                        ),
                        size: ColumnSize.M,
                      ),
                      DataColumn2(
                        label: Text(
                          'Senin',
                          style: font20w6b,
                        ),
                        size: ColumnSize.M,
                      ),
                      DataColumn2(
                        label: Text(
                          'Selasa',
                          style: font20w6b,
                        ),
                        size: ColumnSize.M,
                      ),
                      DataColumn2(
                        label: Text(
                          'Rabu',
                          style: font20w6b,
                        ),
                        size: ColumnSize.M,
                      ),
                      DataColumn2(
                        label: Text(
                          'Kamis',
                          style: font20w6b,
                        ),
                        size: ColumnSize.M,
                      ),
                      DataColumn2(
                        label: Text(
                          "Jum'at",
                          style: font20w6b,
                        ),
                        size: ColumnSize.M,
                        // fixedWidth: 90,
                      ),
                    ],
                    rows: List<DataRow>.generate(
                      14,
                      (index) => DataRow(
                        cells: [
                          const DataCell(Center(
                              child: Text(
                            '1',
                            style: font15w6,
                          ))),
                          DataCell(Text('B' * (10 - index % 10))),
                          DataCell(Text('B' * (10 - index % 10))),
                          DataCell(Text('B' * (10 - index % 10))),
                          DataCell(Text('B' * (10 - index % 10))),
                          DataCell(Text('B' * (10 - index % 10))),
                          DataCell(Text('B' * (10 - index % 10))),

                          // DataCell(
                          //   Center(
                          //     child: ElevatedButton(
                          //       onPressed: () {
                          //         showDialog(
                          //           context: context,
                          //           builder: (context) {
                          //             return const AlertDialog(
                          //               title: Text('HE He Boay'),
                          //             );
                          //           },
                          //         );
                          //       },
                          //       child: const Icon(Icons.ac_unit_outlined),
                          //     ),
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
