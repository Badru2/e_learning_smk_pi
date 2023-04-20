import 'package:data_table_2/paginated_data_table_2.dart';
import 'package:e_learning_smk_pi/screens/admin/sidebar_admin.dart';
import 'package:e_learning_smk_pi/widgets/appbar_admin.dart';
import 'package:e_learning_smk_pi/widgets/my_font.dart';
import 'package:e_learning_smk_pi/widgets/sidebar.dart';
import 'package:e_learning_smk_pi/widgets/sidebar_active.dart';
import 'package:flutter/material.dart';

class DetailKelasAdmin extends StatefulWidget {
  const DetailKelasAdmin({super.key});

  @override
  State<DetailKelasAdmin> createState() => _DetailKelasAdminState();
}

class _DetailKelasAdminState extends State<DetailKelasAdmin> {
  List data = [
    'NIK',
    'Nama',
    'Email',
    'Jenis Kelamin',
    'TTL',
    'Alamat',
    'Mata Pelajaran',
    'Wali Kelas',
    'no. telepon',
    'Kode',
  ];

  List isiData = [
    '08414812481248',
    'lis',
    'Iismtk132@gmail.com',
    'Perempuan',
    'Bandung, 09 Juli 1985',
    'JL.Guling PI NO.59',
    'Matematika',
    'XI-OTKP',
    '08137685678',
    'A',
  ];

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const AppbarAdmin(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.fromLTRB(100, 20, 100, 20),
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.arrow_back)),
                    const Text('XI RPL'),
                  ],
                ),
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
                    const SizedBox(width: 40),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF119A47),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: const EdgeInsets.fromLTRB(30, 23, 30, 23),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SideBarAdmin(),
                            ));
                      },
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
                    const SizedBox(width: 40),
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
                    const SizedBox(width: 40),
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
                SizedBox(height: 50),
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
                      // DataColumn2(
                      //   label: Text(
                      //     'Kode',
                      //     style: font20w6b,
                      //   ),
                      //   size: ColumnSize.S,
                      //   fixedWidth: 80,
                      // ),
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
                          'Kelas',
                          style: font20w6b,
                        ),
                        size: ColumnSize.L,
                      ),
                      DataColumn2(
                        label: Text(
                          'Jurusan',
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
                          // const DataCell(Center(
                          //     child: Text(
                          //   'A',
                          //   style: font15w6,
                          // ))),
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
                                      return AlertDialog(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          side: const BorderSide(
                                            color: Colors.black,
                                            width: 3,
                                          ),
                                        ),
                                        title: Row(
                                          children: [
                                            SizedBox(
                                              width: screenSize.width * 0.38,
                                              child: const Center(
                                                  child: Text('Detail',
                                                      style: font20w6b)),
                                            ),
                                            IconButton(
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                              icon: const Icon(
                                                Icons.cancel_outlined,
                                              ),
                                            ),
                                          ],
                                        ),
                                        actions: [
                                          Container(
                                            margin:
                                                const EdgeInsets.only(left: 20),
                                            child: Row(
                                              children: [
                                                SizedBox(
                                                  width:
                                                      screenSize.width * 0.25,
                                                  // width: 300,
                                                  height: 400,
                                                  child: ListView.builder(
                                                    itemBuilder:
                                                        (context, index) {
                                                      return Container(
                                                        margin: const EdgeInsets
                                                            .only(
                                                          bottom: 10,
                                                          top: 5,
                                                        ),
                                                        child: Row(
                                                          children: [
                                                            SizedBox(
                                                              width: 150,
                                                              child: Text(
                                                                data[index],
                                                                style:
                                                                    font20w6b,
                                                              ),
                                                            ),
                                                            const Text(
                                                              ':',
                                                              style: font20w6b,
                                                            ),
                                                            const SizedBox(
                                                                width: 10),
                                                            Text(
                                                              isiData[index],
                                                              style: font20w6b,
                                                            )
                                                          ],
                                                        ),
                                                      );
                                                    },
                                                    itemCount: 10,
                                                  ),
                                                ),
                                                SizedBox(
                                                  width:
                                                      screenSize.width * 0.15,
                                                  height: 400,
                                                  child: Stack(
                                                    children: [
                                                      Positioned(
                                                        top: 30,
                                                        child: Container(
                                                          // alignment:
                                                          //     // Alignment.center,
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10),
                                                            color: const Color(
                                                                0xFFCDCDCD),
                                                          ),
                                                          width: 220,
                                                          height: 270,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                          )
                                        ],
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
