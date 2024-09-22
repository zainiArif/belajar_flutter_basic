import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyFontFamily extends StatelessWidget {
  const MyFontFamily({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Font Family'),
      ),
      body: Center(
        child: SizedBox(
          width: 350,
          child: Column(children: [
            Text(
              'Pengertian Flutter',
              style: GoogleFonts.blackOpsOne(fontSize: 20),
            ),
            const Text(''),
            const Text(
              'Flutter adalah sebuah framework open source untuk aplikasi smartphone yang diciptakan oleh Google.',
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontFamily: 'montserrat',
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
            const Text(
              'Flutter digunakan dalam pengembangan aplikasi untuk sistem operasi Android, iOS, Windows, Linux,dan MacOS.',
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontFamily: 'dancingScript',
                fontSize: 20,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.5,
                //height: 1,
              ),
            ),
            const Text(
              'Versi pertama Flutter dikenal sebagai "Sky" dan berjalan pada sistem operasi Android.',
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              'Diresmikan pada perhelatan Dart developer summit tahun 2015, dengan tujuan untuk mampu merender grafis secara konsisten pada 120 bingkai per detik.',
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontFamily: 'paradiseSilhouette',
                fontSize: 18,
                letterSpacing: 1.5,
                //height: 1.3,
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
