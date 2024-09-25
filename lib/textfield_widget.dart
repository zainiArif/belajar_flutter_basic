import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyTextField extends StatefulWidget {
  const MyTextField({super.key});

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  TextEditingController textEditingController =
      TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Textfield Widget'),
        centerTitle: true,
        backgroundColor: Colors.blue.shade100,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              controller: textEditingController,
              onChanged: (value) => setState(() {}),
              // obscureText: true,
              // obscuringCharacter: '*',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
              cursorColor: Colors.pink,
              //inputFormatters: [UpperCaseTextFormatter()],
              // inputFormatters: [
              //   TextInputFormatter.withFunction(
              //       (oldValue, newValue) => TextEditingValue(
              //             text: newValue.text.toUpperCase(),
              //             selection: newValue.selection,
              //           ))
              // ],
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              textEditingController.text,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class UpperCaseTextFormatter extends TextInputFormatter {
//   @override
//   TextEditingValue formatEditUpdate(
//       TextEditingValue oldValue, TextEditingValue newValue) {
//     return newValue.copyWith(
//       text: newValue.text.toUpperCase(),
//       selection: newValue.selection,
//     );
//   }
// }
