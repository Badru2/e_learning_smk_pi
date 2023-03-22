import 'package:flutter/material.dart';

class DeskripsiTugas extends StatelessWidget {
  const DeskripsiTugas({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20),
      alignment: Alignment.bottomLeft,
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        dense: true,
        visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
        leading: const Icon(Icons.document_scanner_sharp),
        title: TextFormField(
          decoration: const InputDecoration.collapsed(
            hintText: 'Tambah Deskripsi',
          ),
          cursorColor: Colors.black,
        ),
      ),
    );
  }
}
