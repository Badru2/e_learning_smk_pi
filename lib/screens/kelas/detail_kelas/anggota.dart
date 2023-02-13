import 'package:e_learning_smk_pi/screens/kelas/line.dart';
import 'package:e_learning_smk_pi/widgets/my_font.dart';
import 'package:flutter/material.dart';

class AnggotaSiswaI extends StatelessWidget {
  const AnggotaSiswaI({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const ListTile(
            title: Text(
          'Pengajar',
          style: font30w7,
        )),
        const LineFullWidth(),
        const SizedBox(height: 20),
        Container(
          child: const ListTile(
            leading: CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage('assets/image/voidProfile.png'),
            ),
            title: Text(
              'Lis',
              style: TextStyle(
                fontFamily: 'Outfit',
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
        const ListTile(
            title: Text(
          'Siswa/I',
          style: font30w7,
        )),
        const LineFullWidth(),
        const SizedBox(height: 20),
        const SizedBox(
          child: ListTile(
            leading: CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage('assets/image/voidProfile.png'),
            ),
            title: Text(
              'Ahmad Ikhsan',
              style: TextStyle(
                fontFamily: 'Outfit',
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
