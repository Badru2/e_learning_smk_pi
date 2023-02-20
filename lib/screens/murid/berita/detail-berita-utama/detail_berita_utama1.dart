import 'package:e_learning_smk_pi/widgets/my_line.dart';
import 'package:flutter/material.dart';

import 'bawah.dart';

class DetailBerita extends StatelessWidget {
  const DetailBerita({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          'E-Mading',
          style: TextStyle(
            fontFamily: 'Outfit',
            fontSize: 30,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        toolbarHeight: 60,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.9,
            child: Column(
              children: [
                const SizedBox(height: 20),
                Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.width * 0.4,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: Colors.black,
                      width: 2,
                    ),
                  ),
                  child: Image.asset(
                    'assets/image/Rectangle 37.png',
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: SizedBox(
                        width: 230,
                        child: Text(
                          'Siswa/i SMK Pi juara matematika se bandung raya',
                          maxLines: 2,
                          style: TextStyle(
                            fontFamily: 'Outfit',
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF070404),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'E-mading SMK PI - Situasi pandemi Covid-19 ternyata tidak menurunkan semangat anak bangsa untuk mengukir prestasi di kancah olimpiade matematika se-bandung raya yang ditaja Universitas ITB pada tanggal 15-20 januari 2023, Setelah Tahun Lalu Rizki Setiawati Berhasil Meraih Juara 1 Olimpiade Matematika Tingkat SMK Se jabar dan Juara 1 Olimpiade Matematika Tingkat SMK Se-bandung rayaTahun ini, Siswa SMK Prakarya internasional Kembali Meraih Juara 1 Olimpiade Matematika Tingkat SMK Se-jawa barat atas Nama Rehan Marcell (Kelas X Jurusan OTKP).',
                      maxLines: 9,
                      style: TextStyle(
                        fontFamily: 'Outfit',
                        fontSize: 11,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Column(
                      children: const <Widget>[
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Dan 3 Utusan lainnya juga meraih Juara Harapan yaitu Harapan 2 Vazira Yusri Octaviani (XI OTKP), Harapan 3 Sanny saputra  (XI HR) dan Harapan 4 atas nama Friska Hutagalung (X oTKP) Olimpiade ini diikuti oleh SMK Negeri dan Swasta se-jabar, diantaranya yang menjadi kompetitor terberat yaitu SMKN 1 Tanjung Pinang dan SMK Labor Binaan FKIP UR. ',
                          maxLines: 6,
                          style: TextStyle(
                            fontFamily: 'Outfit',
                            fontSize: 11,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Text(
                          '“Merupakan sebuah kebanggaan tersendiri dapat mempersembahkan Juara 1 bagi SMK Prakarya internasional. Apalagi dapat bersaing dengan sekolah-sekolah favorit”, ujar Rehana Marsel dalam keterangan persnya, Sabtu (20/01/2023).',
                          maxLines: 4,
                          style: TextStyle(
                            fontFamily: 'Outfit',
                            fontSize: 11,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Text(
                          'Meskipun ini adalah kali pertama Rehana mengikuti Olimpiade ini langsung menghasilkan Juara 1.',
                          maxLines: 2,
                          style: TextStyle(
                            fontFamily: 'Outfit',
                            fontSize: 11,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Text(
                          'Umumnya bagi peserta di sekolah lainnya, mereka telah mengikuti perlombaan tersebut selama dua atau bahkan tiga kali sebelum berhasil mendapatkan juara, sehingga pengalaman dan mental mereka sudah terbentuk secara lebih matang.',
                          maxLines: 4,
                          style: TextStyle(
                            fontFamily: 'Outfit',
                            fontSize: 11,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Text(
                          'Tim SMK Prakarya internasional awalnya Mengutus 5 Peserta Untuk mengikuti Olimpiade ini yang dibimbing langsung Oleh Jefrizal, S.Pd dan Devi Ageti Delen, S.Pd. yang mana mereka berdua adalah guru Matematika di SMK prakarya internasional',
                          maxLines: 4,
                          style: TextStyle(
                            fontFamily: 'Outfit',
                            fontSize: 11,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Text(
                          'Berdasarkan Hasil Keterangan yang didapat dari Pembimbingnya, Pembinaan Tim Olimpiade ini telah lama dilakukan mulai September 2023 dan merupakan kegiatan Rutin setiap minggunya.',
                          maxLines: 3,
                          style: TextStyle(
                            fontFamily: 'Outfit',
                            fontSize: 11,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Text(
                          'Target kami Selanjutnya, yaitu mengikuti Olimpiade Matematika Se-Riau yang akan dilaksanakan Oleh Kampus UIN Suska Riau dan kami masih menunggu jadwal pelaksanaan, ujar Jefrizal.',
                          maxLines: 3,
                          style: TextStyle(
                            fontFamily: 'Outfit',
                            fontSize: 11,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Text(
                          'Semoga Setiap tahun, Tim Olimpiade Matematika SMK Prakarya internasional bisa memenangkan Olimpiade Matematika dan Olimpiade dibidang lainnya.',
                          maxLines: 3,
                          style: TextStyle(
                            fontFamily: 'Outfit',
                            fontSize: 11,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        LineBerita(),
                        // SizedBox(
                        //   height: 20,
                        // ),
                        DetailBawah(),
                        SizedBox(
                          height: 30,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
