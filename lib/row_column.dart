import 'package:flutter/material.dart';

class MyRowColumn extends StatelessWidget {
  const MyRowColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Row And Column Widget'),
        centerTitle: true,
        backgroundColor: Colors.teal.shade200,
      ),
      body: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Text('Row\nColumn\nA1'),
          Text('RowColumnA2'),
          Text('RowColumnA3'),
        ]),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
          Text('RowColumnB1'),
          Text('Row\nColumn\nB2'),
          Text('RowColumnB3'),
        ]),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Text('RowColumnC1'),
          Text('RowColumnC2'),
          Text('Row\nColumn\nC3'),
        ]),
      ]),
    );
  }
}
