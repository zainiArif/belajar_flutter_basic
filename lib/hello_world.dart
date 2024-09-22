import 'package:flutter/material.dart';

class MyFirstApp extends StatelessWidget {
  const MyFirstApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My First Application'),
      ),
      body: const Center(child: Text('Hello World'),),
    );
  }
}
