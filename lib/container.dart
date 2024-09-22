import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  const MyContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Container Widget'),
      ),
      //body: const ContainerWidget(),
      body: const ContainerBoxDecoration(),
    );
  }
}

//-------------
class ContainerWidget extends StatelessWidget {
  const ContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 100,
              height: 100,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.fromLTRB(20, 15, 10, 5),
              color: Colors.cyan,
              child: Container(
                color: Colors.brown,
              ),
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.pink,
            ),
          ],
        ),
        Row(
          children: [
            Container(
              width: 100,
              height: 100,
              color: Colors.yellow,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.black45,
            ),
          ],
        ),
      ],
    );
  }
}

//-------------
class ContainerBoxDecoration extends StatelessWidget {
  const ContainerBoxDecoration({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 150,
        height: 100,
        decoration: BoxDecoration(
          //color: Colors.red,
          border: Border.all(
            color: Colors.black54,
            width: 1.5,
          ),
          //borderRadius: const BorderRadius.only(
          //topRight: Radius.circular(30),
          //bottomLeft: Radius.circular(30),
          //),
          image: const DecorationImage(
            image: NetworkImage(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-7nufDL3gpsA-tbhQh9xzh-XlhfXhUGQ7xw&s'),
            fit: BoxFit.cover,
          ),
          boxShadow: const [
            BoxShadow(
              color: Colors.blueAccent,
              blurRadius: 10.0,
              spreadRadius: 5.0,
              offset: Offset(-5, 5),
            )
          ],
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
