import 'package:flutter/material.dart';

class EkskulSatu extends StatelessWidget {
  const EkskulSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 7,
      child: Stack(
        children: <Widget>[
          SizedBox(
            child: Image.asset('assets/image/Rectangle 27.png'),
          ),
          Positioned(
            right: 40,
            top: 47,
            child: Container(
              width: 153,
              height: 100,
              child: Padding(
                padding: EdgeInsets.only(left: 15, top: 10),
                child: Text(
                  'ayo ikut Ekstrakulikuler futsal!',
                  style: TextStyle(
                    fontFamily: 'Outfit',
                    fontWeight: FontWeight.w600,
                    fontSize: 19,
                    color: Colors.white,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                color: const Color(0xFF13005A).withOpacity(0.5),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          )
        ],
      ),
    );
  }
}
