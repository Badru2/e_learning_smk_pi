import 'package:e_learning_smk_pi/widgets/my_border.dart';
import 'package:e_learning_smk_pi/widgets/my_font.dart';
import 'package:flutter/material.dart';

class DataProfile extends StatelessWidget {
  const DataProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.9,
          height: 50,
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: const [boxShadows],
              borderRadius: BorderRadius.circular(10)),
          child: Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 30),
                width: MediaQuery.of(context).size.width * 0.2,
                child: const Text(
                  'Email',
                  style: font15w6,
                ),
              ),
              const Text(
                ': HilalBadru2@gmail.com',
                style: font15w6,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.9,
          height: 50,
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: const [boxShadows],
              borderRadius: BorderRadius.circular(10)),
          child: Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 30),
                width: MediaQuery.of(context).size.width * 0.2,
                child: const Text(
                  'Total Nilai',
                  style: font15w6,
                ),
              ),
              const Text(
                ': 2354',
                style: font15w6,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.9,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: const [boxShadows],
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 30),
                width: MediaQuery.of(context).size.width * 0.2,
                child: const Text(
                  'TTl',
                  style: font15w6,
                ),
              ),
              const Text(
                ': Bandung, 23 september 2006',
                style: font15w6,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.9,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: const [boxShadows],
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 30),
                width: MediaQuery.of(context).size.width * 0.2,
                child: const Text(
                  'Alamat',
                  style: font15w6,
                ),
              ),
              const Text(
                ': Jl.Bumi Asih no.24',
                style: font15w6,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.9,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: const [boxShadows],
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 30),
                width: MediaQuery.of(context).size.width * 0.2,
                child: const Text(
                  'Jurusan',
                  style: font15w6,
                ),
              ),
              const Text(
                ': RPL',
                style: font15w6,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.9,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: const [boxShadows],
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 30),
                width: MediaQuery.of(context).size.width * 0.2,
                child: const Text(
                  'No Absen',
                  style: font15w6,
                ),
              ),
              const Text(
                ': 16',
                style: font15w6,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
