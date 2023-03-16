import 'package:data_table_2/paginated_data_table_2.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:e_learning_smk_pi/widgets/appbar_admin.dart';
import 'package:e_learning_smk_pi/widgets/my_font.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class EditJadwalAdmin extends StatefulWidget {
  const EditJadwalAdmin({super.key});

  @override
  State<EditJadwalAdmin> createState() => _EditJadwalAdminState();
}

class _EditJadwalAdminState extends State<EditJadwalAdmin> {
  final List<String> guru = [
    'Giri',
    'Iis',
    'Frida',
    'Firman',
    'Agus',
  ];

  String? selectedguru;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppbarAdmin(),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Edit Jadwal Pelajaran', style: font30w7),
                  Text('XI RPL', style: font30w7),
                ],
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.75,
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
                          DataCell(
                            Container(
                              // padding: const EdgeInsets.fromLTRB(0, 13, 10, 13),
                              // margin: const EdgeInsets.only(top: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: const Border(
                                  bottom: BorderSide(color: Colors.black),
                                  top: BorderSide(color: Colors.black),
                                  left: BorderSide(color: Colors.black),
                                  right: BorderSide(color: Colors.black),
                                ),
                              ),
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton2(
                                  barrierColor: Colors.grey.withOpacity(0.5),
                                  dropdownDecoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.black, width: 1),
                                      borderRadius: BorderRadius.circular(5)),
                                  isExpanded: true,
                                  hint: const Text('Guru', style: font10w6),
                                  items: guru
                                      .map((item) => DropdownMenuItem<String>(
                                            value: item,
                                            child: Text(item, style: font12w5),
                                          ))
                                      .toList(),
                                  value: selectedguru,
                                  onChanged: (value) {
                                    setState(() {
                                      selectedguru = value as String;
                                    });
                                  },
                                  itemHeight: 30,
                                  // dropdownMaxHeight: MediaQuery.of(context).size.height * 0.3,
                                ),
                              ),
                            ),
                          ),
                          DataCell(
                            Container(
                              // padding: const EdgeInsets.fromLTRB(0, 13, 10, 13),
                              // margin: const EdgeInsets.only(top: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: const Border(
                                  bottom: BorderSide(color: Colors.black),
                                  top: BorderSide(color: Colors.black),
                                  left: BorderSide(color: Colors.black),
                                  right: BorderSide(color: Colors.black),
                                ),
                              ),
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton2(
                                  barrierColor: Colors.grey.withOpacity(0.5),
                                  dropdownDecoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.black, width: 1),
                                      borderRadius: BorderRadius.circular(5)),
                                  isExpanded: true,
                                  hint: const Text('Guru', style: font10w6),
                                  items: guru
                                      .map((item) => DropdownMenuItem<String>(
                                            value: item,
                                            child: Text(item, style: font12w5),
                                          ))
                                      .toList(),
                                  value: selectedguru,
                                  onChanged: (value) {
                                    setState(() {
                                      selectedguru = value as String;
                                    });
                                  },
                                  itemHeight: 30,
                                  // dropdownMaxHeight: MediaQuery.of(context).size.height * 0.3,
                                ),
                              ),
                            ),
                          ),
                          DataCell(
                            Container(
                              // padding: const EdgeInsets.fromLTRB(0, 13, 10, 13),
                              // margin: const EdgeInsets.only(top: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: const Border(
                                  bottom: BorderSide(color: Colors.black),
                                  top: BorderSide(color: Colors.black),
                                  left: BorderSide(color: Colors.black),
                                  right: BorderSide(color: Colors.black),
                                ),
                              ),
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton2(
                                  barrierColor: Colors.grey.withOpacity(0.5),
                                  dropdownDecoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.black, width: 1),
                                      borderRadius: BorderRadius.circular(5)),
                                  isExpanded: true,
                                  hint: const Text('Guru', style: font10w6),
                                  items: guru
                                      .map((item) => DropdownMenuItem<String>(
                                            value: item,
                                            child: Text(item, style: font12w5),
                                          ))
                                      .toList(),
                                  value: selectedguru,
                                  onChanged: (value) {
                                    setState(() {
                                      selectedguru = value as String;
                                    });
                                  },
                                  itemHeight: 30,
                                  // dropdownMaxHeight: MediaQuery.of(context).size.height * 0.3,
                                ),
                              ),
                            ),
                          ),
                          DataCell(
                            Container(
                              // padding: const EdgeInsets.fromLTRB(0, 13, 10, 13),
                              // margin: const EdgeInsets.only(top: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: const Border(
                                  bottom: BorderSide(color: Colors.black),
                                  top: BorderSide(color: Colors.black),
                                  left: BorderSide(color: Colors.black),
                                  right: BorderSide(color: Colors.black),
                                ),
                              ),
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton2(
                                  barrierColor: Colors.grey.withOpacity(0.5),
                                  dropdownDecoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.black, width: 1),
                                      borderRadius: BorderRadius.circular(5)),
                                  isExpanded: true,
                                  hint: const Text('Guru', style: font10w6),
                                  items: guru
                                      .map((item) => DropdownMenuItem<String>(
                                            value: item,
                                            child: Text(item, style: font12w5),
                                          ))
                                      .toList(),
                                  value: selectedguru,
                                  onChanged: (value) {
                                    setState(() {
                                      selectedguru = value as String;
                                    });
                                  },
                                  itemHeight: 30,
                                  // dropdownMaxHeight: MediaQuery.of(context).size.height * 0.3,
                                ),
                              ),
                            ),
                          ),
                          DataCell(
                            Container(
                              // padding: const EdgeInsets.fromLTRB(0, 13, 10, 13),
                              // margin: const EdgeInsets.only(top: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: const Border(
                                  bottom: BorderSide(color: Colors.black),
                                  top: BorderSide(color: Colors.black),
                                  left: BorderSide(color: Colors.black),
                                  right: BorderSide(color: Colors.black),
                                ),
                              ),
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton2(
                                  barrierColor: Colors.grey.withOpacity(0.5),
                                  dropdownDecoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.black, width: 1),
                                      borderRadius: BorderRadius.circular(5)),
                                  isExpanded: true,
                                  hint: const Text('Guru', style: font10w6),
                                  items: guru
                                      .map((item) => DropdownMenuItem<String>(
                                            value: item,
                                            child: Text(item, style: font12w5),
                                          ))
                                      .toList(),
                                  value: selectedguru,
                                  onChanged: (value) {
                                    setState(() {
                                      selectedguru = value as String;
                                    });
                                  },
                                  itemHeight: 30,
                                  // dropdownMaxHeight: MediaQuery.of(context).size.height * 0.3,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFFF0000),
                        padding: const EdgeInsets.fromLTRB(40, 20, 40, 20)),
                    onPressed: () {},
                    child: const Text(
                      'Batal',
                      style: font20w6,
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF367CFF),
                        padding: const EdgeInsets.fromLTRB(50, 20, 50, 20)),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            titlePadding:
                                const EdgeInsets.fromLTRB(50, 20, 50, 20),
                            actionsPadding:
                                const EdgeInsets.fromLTRB(30, 40, 30, 40),
                            title: const SizedBox(
                              width: 400,
                              child: Text(
                                'Apakah Anda Yakin Ingin Mengubah Ini?',
                                style: font30w7,
                                textAlign: TextAlign.center,
                              ),
                            ),
                            actionsAlignment: MainAxisAlignment.spaceBetween,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            actions: [
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xFFFC1919),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(100)),
                                  padding:
                                      const EdgeInsets.fromLTRB(30, 20, 30, 20),
                                ),
                                onPressed: () {
                                  // Navigator.pop(context);
                                },
                                child: const Text('Tidak', style: font20w6),
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xFF367CFF),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(100)),
                                  padding:
                                      const EdgeInsets.fromLTRB(30, 20, 30, 20),
                                ),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text('Simpan', style: font20w6),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: const Text(
                      'Edit',
                      style: font20w6,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
