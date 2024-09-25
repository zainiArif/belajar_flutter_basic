import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyTextField extends StatefulWidget {
  const MyTextField({super.key});

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  TextEditingController textEditingController = TextEditingController(text: '');

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
              style: const TextStyle(fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
              cursorColor: Colors.pink,
              decoration: InputDecoration(
                hintText: 'Please input any text here',
                hintStyle: const TextStyle(
                    color: Colors.grey, fontWeight: FontWeight.normal),
                //hintMaxLines: 3,
                //labelText: 'Input Text',
                label: Container(
                    padding: const EdgeInsets.all(3),
                    color: Colors.blueGrey,
                    child: Text('Input Text')),
                labelStyle: const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.normal),
                floatingLabelAlignment: FloatingLabelAlignment.center,
                //floatingLabelBehavior: FloatingLabelBehavior.auto,
                helperText: 'This is helper text',
                helperStyle: const TextStyle(color: Colors.lightBlue),
                //helperMaxLines: 2,
                counterText: '${textEditingController.text.length}',
                counterStyle: const TextStyle(
                    color: Colors.deepOrange,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
                icon: const Icon(Icons.keyboard),
                prefixIcon: Container(
                  width: 10,
                  height: 10,
                  color: Colors.red,
                  padding: const EdgeInsets.all(3),
                  child: const Icon(Icons.person_2_outlined),
                ),
                suffixIcon: Container(
                  width: 10,
                  height: 10,
                  color: Colors.green,
                  padding: const EdgeInsets.all(3),
                  child: const Icon(Icons.card_giftcard_outlined),
                ),
                prefixText: 'Name:',
                fillColor: Colors.blueGrey.shade50,
                filled: true,
              ),
              //inputFormatters: [UpperCaseTextFormatter()],
              // inputFormatters: [TextInputFormatter.withFunction((oldValue, newValue)
              // => TextEditingValue(text: newValue.text.toUpperCase(),selection: newValue.selection))],
            ),
            const SizedBox(height: 20),
            //const TextField(),
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
