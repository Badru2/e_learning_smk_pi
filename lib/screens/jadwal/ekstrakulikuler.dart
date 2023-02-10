import 'package:e_learning_smk_pi/widgets/my_font.dart';
import 'package:flutter/material.dart';

class Ekstrakulikuler extends StatelessWidget {
  const Ekstrakulikuler({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 100,
        width: MediaQuery.of(context).size.width * 0.85,
        decoration: const BoxDecoration(
          color: Color(0xFF5C3CD2),
          border: Border(
            left: BorderSide(
              color: Color(0xFF13005A),
              width: 5,
            ),
          ),
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.78,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const <Widget>[
                  Text(
                    'Lapang',
                    style: font10w6w,
                  ),
                  Text(
                    'Kampus 3',
                    style: font10w6w,
                  ),
                ],
              ),
            ),
            const ListTile(
              dense: false,
              title: Text(
                'Futsal',
                style: font20w6,
              ),
              visualDensity: VisualDensity(horizontal: 0, vertical: -4),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.78,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const <Widget>[
                  Text(
                    'Herdiansyah',
                    style: font15w6w,
                  ),
                  Text(
                    '16:00-17:30',
                    style: font10w6w,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
