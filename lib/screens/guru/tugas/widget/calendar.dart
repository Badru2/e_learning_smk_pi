import 'package:flutter/material.dart';

class CalendarTugas extends StatelessWidget {
  const CalendarTugas({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, top: 8),
      alignment: Alignment.bottomLeft,
      child: Column(
        children: [
          Row(
            children: [
              InkWell(
                onTap: (() {}),
                child: const Icon(
                  Icons.calendar_today_outlined,
                  size: 24,
                ),
              ),
              const SizedBox(
                width: 12,
              ),
              const Center(
                child: Text(
                  'dD/MM/YYYY',
                  style: TextStyle(
                    fontFamily: 'Outfit',
                    fontSize: 10,
                    color: Color(0xFF000000),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(
                width: 12,
              ),
              const Center(
                child: Text(
                  '00:00 Pm/Am',
                  style: TextStyle(
                    fontFamily: 'Outfit',
                    fontSize: 10,
                    color: Color(0xFF000000),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
