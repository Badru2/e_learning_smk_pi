import 'package:flutter/material.dart';

class RectangleTugas extends StatelessWidget {
  const RectangleTugas({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.all(20),
      height: 136,
      //width: 332,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
        // borderRadius: BorderRadius.circular(10),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
        boxShadow: [
          BoxShadow(
            color: Color(0xFF000000),
            spreadRadius: 1,
            blurRadius: 7,
            offset: Offset(0, -4),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              const SizedBox(
                width: 21,
              ),
              InkWell(
                onTap: () {},
                child: const Icon(
                  Icons.link,
                  size: 24,
                ),
              ),
              const SizedBox(
                width: 19,
              ),
              const Center(
                child: Text(
                  'Tambah Link',
                  style: TextStyle(
                    fontFamily: 'Outfit',
                    fontSize: 10,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 23,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  const SizedBox(
                    width: 21,
                  ),
                  InkWell(
                    onTap: () {},
                    child: const Icon(
                      Icons.upload_file,
                      size: 24,
                    ),
                  ),
                  const SizedBox(
                    width: 19,
                  ),
                  const Center(
                    child: Text(
                      'Unggah File',
                      style: TextStyle(
                        fontFamily: 'Outfit',
                        fontSize: 10,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
