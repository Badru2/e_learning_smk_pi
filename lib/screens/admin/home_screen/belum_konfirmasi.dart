import 'package:data_table_2/data_table_2.dart';
import 'package:e_learning_smk_pi/responsive.dart';
import 'package:e_learning_smk_pi/widgets/my_font.dart';
import 'package:flutter/material.dart';

class BelumKonfirmasiAdmin extends StatefulWidget {
  const BelumKonfirmasiAdmin({super.key});

  @override
  State<BelumKonfirmasiAdmin> createState() => _BelumKonfirmasiAdminState();
}

class _BelumKonfirmasiAdminState extends State<BelumKonfirmasiAdmin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Responsive(
          mobile: Container(),
          tablet: Container(),
          desktop: Container(
            margin: const EdgeInsets.all(40),
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                        onPressed: () {}, icon: const Icon(Icons.arrow_back)),
                    const Text('Belum Konfirmasi'),
                  ],
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.7,
                  child: DataTable2(
                    border: const TableBorder(
                      verticalInside: BorderSide(color: Colors.black),
                      horizontalInside: BorderSide(color: Colors.black),
                    ),
                    dataRowHeight: 60,
                    columns: const [
                      DataColumn2(
                        size: ColumnSize.L,
                        label: Text(''),
                      ),
                      DataColumn2(
                        size: ColumnSize.S,
                        label: Text(''),
                      ),
                      DataColumn2(
                        fixedWidth: 250,
                        label: Text(''),
                      ),
                    ],
                    rows: List<DataRow>.generate(
                      10,
                      (index) => DataRow(
                        cells: [
                          DataCell(
                            Container(
                              margin:
                                  const EdgeInsets.only(top: 10, bottom: 10),
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/image/voidProfile.png',
                                    scale: 2,
                                  ),
                                  const SizedBox(width: 20),
                                  const Text(
                                    'Iismtk132@gmail.com',
                                    style: font30w7,
                                  )
                                ],
                              ),
                            ),
                          ),
                          const DataCell(
                            Center(
                              child: Text(
                                'Matematika',
                                style: font30w7,
                              ),
                            ),
                          ),
                          DataCell(
                            Center(
                              child: Container(
                                margin:
                                    const EdgeInsets.only(top: 10, bottom: 10),
                                child: Row(
                                  children: [
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor:
                                            const Color(0xFF367CFF),
                                        fixedSize: const Size.fromHeight(50),
                                      ),
                                      onPressed: () {},
                                      child: const Icon(
                                        Icons.book,
                                        color: Colors.black,
                                      ),
                                    ),
                                    const SizedBox(width: 20),
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor:
                                            const Color(0xFFFF0000),
                                        fixedSize: const Size.fromHeight(50),
                                      ),
                                      onPressed: () {},
                                      child: const Icon(
                                        Icons.delete,
                                        color: Colors.black,
                                      ),
                                    ),
                                    const SizedBox(width: 20),
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor:
                                            const Color(0xFF18DC65),
                                        fixedSize: const Size.fromHeight(50),
                                      ),
                                      onPressed: () {},
                                      child: const Icon(
                                        Icons.check,
                                        color: Colors.black,
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
                )
              ],
            ),
          ),
          large: Container(),
        ),
      ),
    );
  }
}
