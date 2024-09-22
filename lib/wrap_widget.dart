import 'package:flutter/material.dart';
import 'dart:math';

class MyWrapWidget extends StatelessWidget {
  MyWrapWidget({super.key});
  final Random random = Random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wrap Widget'),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.blue.shade50,
        child: Wrap(
          //direction: Axis.vertical,
          //alignment: WrapAlignment.end,
          runAlignment: WrapAlignment.end,
          crossAxisAlignment: WrapCrossAlignment.center,
          verticalDirection: VerticalDirection.up,
          spacing: 10,
          runSpacing: 20,
          children: List.generate(
            8,
            (index) => Container(
              width: index % 2 == 0 ? 150 : 100,
              height: index % 2 == 0 ? 150 : 100,
              alignment: Alignment.center,
              color: Color.fromRGBO(
                random.nextInt(250),
                random.nextInt(210),
                random.nextInt(250),
                1,
              ),
              child: Text(
                '$index',
                style: const TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
