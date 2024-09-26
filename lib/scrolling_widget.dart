import 'dart:developer';

import 'package:flutter/material.dart';

class MyScrollWidget extends StatelessWidget {
  const MyScrollWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('SingleChilScrollView and ListView')),
      ),
      // body: SingleChildScrollView(
      //   scrollDirection: Axis.horizontal,
      //   child: Row(
      //     children: crateContainers(),
      //   ),
      // ),
      body: ListView(
        scrollDirection: Axis.horizontal,
        children: crateContainers(),
      ),
    );
  }

  List<Widget> crateContainers() => List.generate(
        30,
        (index) => Builder(builder: (context) {
          log('Rendering Container $index');
          return UnconstrainedBox(
            child: Container(
              margin: const EdgeInsets.all(10),
              width: 100,
              height: 100,
              color: Colors.red,
              child: Center(child: Text('$index')),
            ),
          );
        }),
      );
}
