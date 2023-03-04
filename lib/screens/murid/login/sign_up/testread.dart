// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';

// class ReadData extends StatefulWidget {
//   const ReadData({super.key});

//   @override
//   State<ReadData> createState() => _ReadDataState();
// }

// class _ReadDataState extends State<ReadData> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         child: ListView.builder(
//           itemBuilder: (context, index) {
//             return Container(
//               color: Colors.black,
//               child: getDataOnce_getADocument(),
//             );
//           },
//           itemCount: getDataOnce_getADocument(),
//         ),
//       ),
//     );
//   }

//   // Stream<DocumentSnapshot<Map<String, dynamic>>> readProfile() =>
//   //     FirebaseFirestore.instance
//   //         .collection('users')
//   //         .doc()
//   //         .collection('profile')
//   //         .doc()
//   //         .snapshots().map((snapshot) => snapshot.docs.map((doc) => User.fromJson(doc.data()).toList()));
//   @override
//   final FirebaseFirestore db = FirebaseFirestore.instance;

//   getDataOnce_getADocument() {
//     // [START get_data_once_get_a_document]
//     final docRef = db
//         .collection('users')
//         .doc('EINJH4AaTe4QBsV4Y8JN')
//         .collection('profile')
//         .doc();
//     docRef.get().then(
//       (DocumentSnapshot doc) {
//         final data = doc.data() as Map<String, dynamic>;
//         // ...
//       },
//       onError: (e) => print("Error getting document: $e"),
//     );
//     // [END get_data_once_get_a_document]
//   }
// }

// class User {
//   // String id;
//   final int nik;
//   final String nama;
//   final String ttl;
//   final String agama;
//   final String alamatSiswa;
//   final int telpSiswa;
//   final String namaAyah;
//   final String namaIbu;
//   final String alamatOrtu;
//   final int telpOrtu;
//   final String kerjaAyah;
//   final String kerjaIbu;
//   final String kelamin;

//   User({
//     // this.id = '',
//     required this.nama,
//     required this.ttl,
//     required this.agama,
//     required this.alamatSiswa,
//     required this.telpSiswa,
//     required this.namaAyah,
//     required this.namaIbu,
//     required this.nik,
//     required this.alamatOrtu,
//     required this.telpOrtu,
//     required this.kerjaAyah,
//     required this.kerjaIbu,
//     required this.kelamin,
//   });

//   Map<String, dynamic> toJson() => {
//         // 'id': id,
//         'nik': nik,
//         'nama': nama,
//         'ttl': ttl,
//         'agama': agama,
//         'alamatSiswa': alamatSiswa,
//         'telpSiswa': telpSiswa,
//         'namaAyah': namaAyah,
//         'namaIbu': namaIbu,
//         'alamatOrtu': alamatOrtu,
//         'telpOrtu': telpOrtu,
//         'kerjaAyah': kerjaAyah,
//         'kerjaIbu': kerjaIbu,
//         'kelamin': kelamin,
//       };
// }

// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';

// class ReadData extends StatefulWidget {
//   const ReadData({super.key});

//   @override
//   State<ReadData> createState() => _ReadDataState();
// }

// class _ReadDataState extends State<ReadData> {
//   final DocumentReference<Map<String, dynamic>> _Collection = FirebaseFirestore
//       .instance
//       .collection('users')
//       .doc()
//       .collection('profile')
//       .doc();

//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }

//   static Stream<QuerySnapshot> readEmployee() {
//     CollectionReference notesItemCollection = _Collection;

//     return notesItemCollection.snapshots();
//   }
// }
