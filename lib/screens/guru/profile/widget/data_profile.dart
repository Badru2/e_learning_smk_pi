import 'package:e_learning_smk_pi/widgets/my_border.dart';
import 'package:e_learning_smk_pi/widgets/my_font.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class DataProfileGuru extends StatefulWidget {
  const DataProfileGuru({super.key});

  @override
  State<DataProfileGuru> createState() => _DataProfileGuruState();
}

class _DataProfileGuruState extends State<DataProfileGuru> {
  //// List Data Yang Kiri -->
  List data = [
    'NIK',
    'Email',
    'Mata Pelajaran',
    'Agama',
    'Wali Kelas',
    'No.Telephone',
    'Jenis Kelamin',
    'Tempat, Tanggal Lahir',
    'Alamat',
  ];
//// List Data Yang Kiri <--

//// List Data Yang Kanan -->
  List isiData = [
    '08414812481248',
    'iispujiastuti12@gmail.com',
    'Matematika',
    'Islam',
    'XI OTKP',
    '087532524',
    'Perempuan',
    'Bandung, 29 Setember 1985',
    'Jl.Bumi Asih No.24',
  ];
//// List Data Yang Kanan <--

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 755,
      width: MediaQuery.of(context).size.width,
      //// Looping untuk membuat desain yang sama -->
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        // jumlah item yang di loop
        itemCount: 9,
        itemBuilder: (ctx, i) {
          return Container(
            //// Desain Border -->
            width: MediaQuery.of(context).size.width * 0.9,
            margin: const EdgeInsets.only(bottom: 20, left: 5, right: 5),
            height: 60,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: const [boxShadows],
              borderRadius: BorderRadius.circular(10),
            ),
            //// Desain Border <--
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 15),
                  width: MediaQuery.of(context).size.width * 0.3,
                  // Manggil data yang kiri
                  child: Text(
                    data[i],
                    // font15w6 diambil dari file "my_font.dart"
                    style: font15w6,
                  ),
                ),
                const Text(
                  ':  ',
                  style: font15w6,
                ),
                // Manggil data yang kanan
                Text(
                  isiData[i],
                  style: font15w6,
                ),
              ],
            ),
          );
        },
      ),
      //// Looping untuk membuat desain yang sama <--
    );
  }
}
