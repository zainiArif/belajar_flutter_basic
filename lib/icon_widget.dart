import 'package:flutter/material.dart';

class MyIconWidget extends StatelessWidget {
  const MyIconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Align and Padding Widget'),
        centerTitle: true,
        backgroundColor: Colors.lime,
      ),
      body: const Center(
        child: Icon(
          Icons.hotel,
          size: 100,
        ),
      ),
    );
  }
}
