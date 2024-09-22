import 'package:flutter/material.dart';

class MyStack extends StatelessWidget {
  const MyStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 121, 206, 245),
        title: const Text('Stack Widget Demo'),
      ),
      body: Container(
        color: Colors.yellow.shade200,
        width: 300,
        height: 300,
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            Container(
              color: Colors.red.withOpacity(0.3),
              child: Container(
                margin: const EdgeInsets.all(10),
                color: Colors.red,
                width: 100,
                height: 100,
              ),
            ),
            Container(
              color: Colors.green.withOpacity(0.3),
              child: Container(
                margin: const EdgeInsets.all(20),
                color: Colors.green,
                width: 100,
                height: 100,
              ),
            ),
            Container(
              color: Colors.blue.withOpacity(0.3),
              child: Container(
                margin: const EdgeInsets.all(30),
                color: Colors.blue,
                width: 100,
                height: 100,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
