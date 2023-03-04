import 'package:e_learning_smk_pi/widgets/my_border.dart';
import 'package:e_learning_smk_pi/widgets/my_font.dart';
import 'package:flutter/material.dart';

class DataProfile extends StatefulWidget {
  const DataProfile({super.key});

  @override
  State<DataProfile> createState() => _DataProfileState();
}

//// List Data Yang Kiri -->
List data = [
  'NIK',
  'Email',
  'Jenis Kelamin',
  'Tempat, Tanggal Lahir',
  'Agama',
  'Kelas',
  'Alamat',
  'No.Telp',
  'Nama Ayah',
  'Nama Ibu',
  'Alamat Orangtua',
  'Telp, Orangtua',
  'Pekerjaan Ayah',
  'Pekerjaan Ibu',
];
//// List Data Yang Kiri <--

//// List Data Yang Kanan -->
List isiData = [
  '08414812481248',
  'HilalBadru2@gmail.com',
  'Laki-Laki',
  'Bandung, 17 Oktober 2005',
  'Islam',
  'XI-RPL',
  'Jl.Bumi Asih No.24',
  '0845-7654-2452',
  'Albert',
  'Elizabeth',
  'Jl.Bumi Asih No.24',
  '0845-7654-2452',
  'Dokter',
  'Suster',
];
//// List Data Yang Kanan <--

// List combinelist = [...data, ...isiData];

class _DataProfileState extends State<DataProfile> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 1140,
      width: MediaQuery.of(context).size.width,
      //// Looping untuk membuat desain yang sama -->
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        // jumlah item yang di loop
        itemCount: 14,
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
