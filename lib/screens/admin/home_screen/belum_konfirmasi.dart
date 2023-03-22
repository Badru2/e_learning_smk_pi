import 'package:data_table_2/data_table_2.dart';
import 'package:e_learning_smk_pi/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class BelumKonfirmasiAdmin extends StatefulWidget {
  const BelumKonfirmasiAdmin({super.key});

  @override
  State<BelumKonfirmasiAdmin> createState() => _BelumKonfirmasiAdminState();
}

class _BelumKonfirmasiAdminState extends State<BelumKonfirmasiAdmin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Responsive(
            mobile: Container(),
            tablet: Container(),
            desktop: Container(
              margin: const EdgeInsets.all(20),
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
                    child: DataTable(
                      columns: const [
                        DataColumn(
                          label: Text('!'),
                        ),
                        DataColumn(
                          label: Text('!'),
                        ),
                        DataColumn(
                          label: Text('!'),
                        ),
                      ],
                      rows: const [
                        DataRow(
                          cells: [
                            DataCell(
                              Text('!'),
                            ),
                            DataCell(
                              Text('!'),
                            ),
                            DataCell(
                              Text('!'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            large: Container(),
          ),
        ),
      ),
    );
  }
}
