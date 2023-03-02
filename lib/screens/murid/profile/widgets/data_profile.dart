import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_learning_smk_pi/widgets/my_border.dart';
import 'package:e_learning_smk_pi/widgets/my_font.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class DataProfile extends StatefulWidget {
  const DataProfile({super.key});

  @override
  State<DataProfile> createState() => _DataProfileState();
}

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

List combinelist = [...data, ...isiData];

class _DataProfileState extends State<DataProfile> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 1140,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        itemCount: 14,
        itemBuilder: (ctx, i) {
          return Container(
            width: MediaQuery.of(context).size.width * 0.9,
            margin: const EdgeInsets.only(bottom: 20, left: 5, right: 5),
            height: 60,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: const [boxShadows],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 15),
                  width: MediaQuery.of(context).size.width * 0.3,
                  child: Text(
                    data[i],
                    style: font15w6,
                  ),
                ),
                Text(
                  ':  ',
                  style: font15w6,
                ),
                Text(
                  // ': '
                  isiData[i],
                  style: font15w6,
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  // Stream<List> readUsers() => FirebaseFirestore.instance
  //     .collection('Users')
  //     .snapshots()
  //     .map((snapshot) =>
  //         snapshot.docs.map((doc) => User.fromJson(doc.data())).toList());

  // Map<String, dynamic> toJson() => {
  //       'NIK': nik,
  //       'Email': email,
  //       'Jenis Kelamin': jk,
  //       'Tempat, Tanggal Lahir': ttl,
  //       'Agama': agama,
  //       'Kelas': kelas,
  //       'Alamat': alamat,
  //       'No.Telp': telpSiswa,
  //       'Nama Ayah': namaAyah,
  //       'Nama Ibu': namaIbu,
  //       'Alamat Orangtua': alamatOrtu,
  //       'Telp, Orangtua': telpOrtu,
  //       'Pekerjaan Ayah': kerjaAyah,
  //       'Pekerjaan Ibu': kerjaIbu,
  //     };

  // static User fromJson(Map<String, dynamic> json) => User(
  //       nik: json['nik'],
  //       email: json['email'],
  //       jk: json['jk'],
  //       ttl: json['ttl'],
  //       agama: json['agama'],
  //       kelas: json['kelas'],
  //       alamat: json['alamat'],
  //       telpSiswa: json['telpSiswa'],
  //       namaAyah: json['namaAyah'],
  //       namaIbu: json['namaIbu'],
  //       alamatOrtu: json['alamatOrtu'],
  //       kerjaAyah: json['kerjaAyah'],
  //       kerjaIbu: json['kerjaIbu'],
  //     );
}
