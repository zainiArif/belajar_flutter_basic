import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class MyIconWidget extends StatelessWidget {
  const MyIconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Icon Widget'),
        centerTitle: true,
        backgroundColor: Colors.lime,
      ),
      body: Center(
        child: Icon(
          //Icons.electric_car,
          MdiIcons.vlc,
          size: 75,
          color: const Color.fromARGB(255, 241, 111, 5),
          // shadows: const [
          //   Shadow(
          //     color: Colors.black45,
          //     offset: Offset(-3, -3),
          //     blurRadius: 4,
          //   ),
          // ],
        ),
      ),
    );
  }
}
