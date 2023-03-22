import 'package:flutter/material.dart';

class DeskripsiTugas extends StatelessWidget {
  const DeskripsiTugas({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20),
      alignment: Alignment.bottomLeft,
      child: Column(
        children: [
          Row(
            children: [
              InkWell(
                onTap: () {},
                child: const Icon(
                  //   Icons.text_description_20_filled,
                  Icons.description_sharp,
                  size: 20,
                ),
              ),
              const SizedBox(
                width: 12,
              ),
              const Center(
                child: Text(
                  'Tambah Deskripsi',
                  style: TextStyle(
                    fontFamily: 'Outfit',
                    fontSize: 10,
                    color: Color(0xFFD9D9D9),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
