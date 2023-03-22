import 'package:e_learning_smk_pi/widgets/appbar_admin.dart';
import 'package:e_learning_smk_pi/widgets/my_font.dart';
import 'package:flutter/material.dart';
import 'package:data_table_2/paginated_data_table_2.dart';

class SiswaScreenAdmin extends StatefulWidget {
  const SiswaScreenAdmin({super.key});

  @override
  State<SiswaScreenAdmin> createState() => _SiswaScreenAdminState();
}

class _SiswaScreenAdminState extends State<SiswaScreenAdmin> {
  List data = [
    'NIK',
    'Nama',
    'E-Mail',
    'Jenis Kelamin',
    'Agama',
    'TTL',
    'Alamat',
    'Jurusan',
    'Kelas',
    'no. Telepon',
    'Nama Ayah',
    'Nama Ibu',
    'Alamat Orang tua',
    'no. telepon Orang tua',
    'Pekerjaan Ayah',
    'Pekerjaan Ibu'
  ];

  List isiData = [
    '20214124124',
    'lis',
    'Iismtk132@gmail.com',
    'Perempuan',
    'Islam',
    'Bandung, 09 Juli 1985',
    'JL.Guling PI NO.59',
    'RPL',
    'XI',
    '08137685678',
    'Samsudin',
    'Juliasari',
    'Jl. cihanjuang Kp. centeng rt 01 rw 07 kec. parongpong kab. bandung barat',
    '08214986143',
    'Arsitek',
    'Dokter',
  ];
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      // route: '/GuruAdmin',
      appBar: const AppbarAdmin(),
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
                      margin: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: const Color(0xFF2A39D6),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Text(
                            '700 Siswa',
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
                                              width: screenSize.width * 0.45,
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
                                                      screenSize.width * 0.35,
                                                  // width: 300,
                                                  height: 700,
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
                                                              width: 200,
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
                                                            SizedBox(
                                                              width: 400,
                                                              child: Text(
                                                                isiData[index],
                                                                style:
                                                                    font20w6b,
                                                              ),
                                                            )
                                                          ],
                                                        ),
                                                      );
                                                    },
                                                    itemCount: 16,
                                                  ),
                                                ),
                                                SizedBox(
                                                  width:
                                                      screenSize.width * 0.15,
                                                  height: 700,
                                                  child: Stack(
                                                    children: [
                                                      Positioned(
                                                        top: 0,
                                                        child: Container(
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                              10,
                                                            ),
                                                            color: const Color(
                                                              0xFFCDCDCD,
                                                            ),
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
