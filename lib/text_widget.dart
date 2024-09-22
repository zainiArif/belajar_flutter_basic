import 'package:flutter/material.dart';

class MyTextWidget extends StatelessWidget {
  const MyTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Widget'),
      ),
      body: const Center(
        child: SizedBox(
          width: 250,
          child: Text(
            'Flutter adalah sebuah framework open source untuk aplikasi smartphone yang diciptakan oleh Google. Flutter digunakan dalam pengembangan aplikasi untuk sistem operasi Android, iOS, Windows, Linux,dan MacOS',
            //textAlign: TextAlign.justify,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              backgroundColor: Colors.black,
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              shadows: [
                Shadow(
                  color: Colors.blue,
                  offset: Offset(-3, -3),
                  blurRadius: 2,
                )
              ],
              //letterSpacing: 10,
              //wordSpacing: 3,
              decoration: TextDecoration.underline,
              decorationColor: Colors.red,
              decorationThickness: 2,
              decorationStyle: TextDecorationStyle.wavy,
            ),
          ),
        ),
      ),
    );
  }
}
