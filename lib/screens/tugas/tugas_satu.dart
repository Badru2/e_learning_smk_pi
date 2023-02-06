import 'package:flutter/material.dart';

class BagianTugasMtk extends StatelessWidget {
  const BagianTugasMtk({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 89,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xFFA946CC),
      ),
      child: Column(
        children: <Widget>[
          const SizedBox(
            child: ListTile(
              title: Text(
                'Tugas #2',
                style: TextStyle(
                  fontFamily: 'Outfit',
                  fontSize: 10,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFFffffff),
                ),
              ),
              subtitle: Text(
                'Persamaan Variabel',
                style: TextStyle(
                  fontFamily: 'Outfit',
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFFffffff),
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                child: Text('523552253'),
              ),
              SizedBox(
                child: Text('MTK'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
