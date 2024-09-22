import 'package:flutter/material.dart';

class MySizedBox extends StatelessWidget {
  const MySizedBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sized Box Widget'),
      ),
      body: const Center(
        child: Column(
          children: [
            SizedBox(
              width: 150,
              child: Text('Halo Nama Saya Daniel Joko Mulyono'),
            ),
            SizedBox(height: 30),
            Text('Selamat datang di Youtube saya : DJM Channel'),
          ],
        ),
      ),
    );
  }
}
