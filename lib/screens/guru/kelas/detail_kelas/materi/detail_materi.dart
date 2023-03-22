import 'package:e_learning_smk_pi/widgets/my_font.dart';
import 'package:flutter/material.dart';

class DetailMateriGuru extends StatelessWidget {
  const DetailMateriGuru({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          'Matematika',
          style: TextStyle(
            fontFamily: 'Outfit',
            fontSize: 30,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        toolbarHeight: 60,
      ),
      body: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.95,
          child: Column(
            children: [
              const ListTile(
                title: Text(
                  'Catatan :',
                  style: font20w6b,
                ),
              ),
              const ListTile(
                title: Text(
                  'Silahkan pelajari dan tulis dibuku cataan kalian masing-masing materi berikut,pembahasanya akan disampaikan dalam pembelajaran tatap muka di kampus 2 nanti.',
                  style: font12w5,
                ),
              ),
              const ListTile(
                title: Text(
                  'Materi :',
                  style: font20w6b,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: TextButton(
                      onPressed: () {},
                      child: Image.asset('assets/image/image 6.png')),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: TextButton(
                      onPressed: () {},
                      child: Row(
                        children: const [
                          SizedBox(width: 10),
                          Icon(
                            Icons.document_scanner,
                            color: Colors.red,
                          ),
                          SizedBox(width: 10),
                          Text(
                            'Deret Aritmatika.Pptx',
                            style: font15w6,
                          )
                        ],
                      )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
