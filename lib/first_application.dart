import 'package:flutter/material.dart';

class FirstApplication extends StatelessWidget {
  const FirstApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My First Aplication'),
      ),
      body: const Center(
        child: Text('Hello world'),
      ),
    );
  }
}
