import 'package:flutter/material.dart';

class TaskListTugas extends StatelessWidget {
  const TaskListTugas({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 18),
      alignment: Alignment.centerLeft,
      child: Column(
        children: [
          Row(
            children: [
              InkWell(
                onTap: (() {}),
                child: const Icon(
                  Icons.task_alt_outlined,
                  size: 28,
                ),
              ),
              const SizedBox(
                width: 24,
              ),
              const Center(
                child: Text(
                  '100 Points',
                  style: TextStyle(
                    fontFamily: 'Outfit',
                    fontSize: 14,
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
