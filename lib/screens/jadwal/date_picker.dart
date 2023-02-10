import 'package:flutter/material.dart';

class DatePicker extends StatefulWidget {
  const DatePicker({super.key});

  @override
  State<DatePicker> createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  final weekList = [
    'Minggu',
    'Senin',
    'Selasa',
    'Rabu',
    'Kamis',
    "Jum'at",
    'Sabtu',
  ];
  final dayList = ['5', '6', '7', '8', '9', '10', '11'];

  var selected = 3;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border.all(color: Colors.black)),
      height: 77,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () => setState(() => selected = index),
          child: Container(
            padding: const EdgeInsets.fromLTRB(5, 10, 5, 10),
            // margin: EdgeInsets.symmetric(horizontal: 4),
            decoration: BoxDecoration(
              // borderRadius: BorderRadius.circular(5),
              color: selected == index ? const Color(0xFF13005A) : null,
            ),
            child: SizedBox(
              width: 50,
              child: Column(
                children: [
                  Text(
                    weekList[index],
                    style: TextStyle(
                      color: selected == index ? Colors.white : Colors.black,
                      fontFamily: 'Outfit',
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    dayList[index],
                    style: TextStyle(
                      fontFamily: 'Outfit',
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: selected == index ? Colors.white : Colors.black,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        separatorBuilder: (_, index) => const SizedBox(width: 4),
        itemCount: weekList.length,
      ),
    );
  }
}
