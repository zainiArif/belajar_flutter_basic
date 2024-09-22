import 'package:flutter/material.dart';

class AlignPaddingWidget extends StatelessWidget {
  const AlignPaddingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Align and Padding Widget'),
        centerTitle: true,
        backgroundColor: Colors.lime,
      ),
      body: const MyPadding(),
    );
  }
}

//------------------
class MyAlign extends StatelessWidget {
  const MyAlign({super.key});

  @override
  Widget build(BuildContext context) {
    return const Align(
      alignment: Alignment(-0.5, -0.80),
      child: SizedBox(
        width: 300,
        child: Text(
          'Widget Align di Flutter digunakan untuk mengatur posisi anak widget di dalam kontainer. Widget ini memungkinkan Anda untuk menentukan bagaimana anak widget harus diposisikan dalam ruang yang tersedia.',
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}

//--------- Padding
class MyPadding extends StatelessWidget {
  const MyPadding({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(20, 20, 10, 20),
          child: Text('Pertama'),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
          child: Text('Kedua'),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(10, 20, 20, 20),
          child: Text('Ketiga'),
        ),
      ],
    );
  }
}
