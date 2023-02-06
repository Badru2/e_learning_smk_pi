import 'package:e_learning_smk_pi/widgets/my_font.dart';
import 'package:flutter/material.dart';

class CheckboxDaftar extends StatefulWidget {
  const CheckboxDaftar({super.key});

  @override
  State<CheckboxDaftar> createState() => _CheckboxDaftarState();
}

bool futsal = false,
    basket = false,
    pramuka = false,
    math = false,
    marching = false,
    volly = false,
    badmintom = false,
    japanese = false,
    english = false,
    bajak = false,
    silat = false;

class _CheckboxDaftarState extends State<CheckboxDaftar> {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        unselectedWidgetColor: Colors.black,
        checkboxTheme: CheckboxThemeData(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(4))),
      ),
      child: Column(
        children: [
          ListTile(
            title: Text(
              'Ekstrakulikuler. *',
              style: font20w6b,
            ),
          ),
          CheckboxListTile(
            dense: true,
            activeColor: Colors.black,
            visualDensity: VisualDensity(horizontal: 0, vertical: -4),
            value: futsal,
            controlAffinity: ListTileControlAffinity.leading,
            onChanged: (value) {
              setState((() => futsal = value!));
            },
            title: Text(
              'Futsal',
              style: font10w6,
            ),
          ),
          CheckboxListTile(
            dense: true,
            activeColor: Colors.black,
            visualDensity: VisualDensity(horizontal: 0, vertical: -4),
            value: basket,
            controlAffinity: ListTileControlAffinity.leading,
            onChanged: (value) {
              setState((() => basket = value!));
            },
            title: Text(
              'Basket',
              style: font10w6,
            ),
          ),
          CheckboxListTile(
            dense: true,
            activeColor: Colors.black,
            visualDensity: VisualDensity(horizontal: 0, vertical: -4),
            value: pramuka,
            controlAffinity: ListTileControlAffinity.leading,
            onChanged: (value) {
              setState((() => pramuka = value!));
            },
            title: Text(
              'Pramuka',
              style: font10w6,
            ),
          ),
          CheckboxListTile(
            dense: true,
            activeColor: Colors.black,
            visualDensity: VisualDensity(horizontal: 0, vertical: -4),
            value: math,
            controlAffinity: ListTileControlAffinity.leading,
            onChanged: (value) {
              setState((() => math = value!));
            },
            title: Text(
              'Math Club',
              style: font10w6,
            ),
          ),
          CheckboxListTile(
            dense: true,
            activeColor: Colors.black,
            visualDensity: VisualDensity(horizontal: 0, vertical: -4),
            value: marching,
            controlAffinity: ListTileControlAffinity.leading,
            onChanged: (value) {
              setState((() => marching = value!));
            },
            title: Text(
              'Marching Band',
              style: font10w6,
            ),
          ),
          CheckboxListTile(
            dense: true,
            activeColor: Colors.black,
            visualDensity: VisualDensity(horizontal: 0, vertical: -4),
            value: volly,
            controlAffinity: ListTileControlAffinity.leading,
            onChanged: (value) {
              setState((() => volly = value!));
            },
            title: Text(
              'Volly',
              style: font10w6,
            ),
          ),
          CheckboxListTile(
            dense: true,
            activeColor: Colors.black,
            visualDensity: VisualDensity(horizontal: 0, vertical: -4),
            value: badmintom,
            controlAffinity: ListTileControlAffinity.leading,
            onChanged: (value) {
              setState((() => badmintom = value!));
            },
            title: Text(
              'Badminton',
              style: font10w6,
            ),
          ),
          CheckboxListTile(
            dense: true,
            activeColor: Colors.black,
            visualDensity: VisualDensity(horizontal: 0, vertical: -4),
            value: japanese,
            controlAffinity: ListTileControlAffinity.leading,
            onChanged: (value) {
              setState((() => japanese = value!));
            },
            title: Text(
              'Japanese Club',
              style: font10w6,
            ),
          ),
          CheckboxListTile(
            dense: true,
            activeColor: Colors.black,
            visualDensity: VisualDensity(horizontal: 0, vertical: -4),
            value: english,
            controlAffinity: ListTileControlAffinity.leading,
            onChanged: (value) {
              setState((() => english = value!));
            },
            title: Text(
              'English Club',
              style: font10w6,
            ),
          ),
          CheckboxListTile(
            dense: true,
            activeColor: Colors.black,
            visualDensity: VisualDensity(horizontal: 0, vertical: -4),
            value: bajak,
            controlAffinity: ListTileControlAffinity.leading,
            onChanged: (value) {
              setState((() => bajak = value!));
            },
            title: Text(
              'Bajak (Software)',
              style: font10w6,
            ),
          ),
          CheckboxListTile(
            visualDensity: VisualDensity(horizontal: 0, vertical: -4),
            dense: true,
            activeColor: Colors.black,
            value: silat,
            controlAffinity: ListTileControlAffinity.leading,
            onChanged: (value) {
              setState((() => silat = value!));
            },
            title: Text(
              'Pencak Silat',
              style: font10w6,
            ),
          ),
        ],
      ),
    );
  }
}
