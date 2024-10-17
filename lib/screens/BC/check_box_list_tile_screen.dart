import 'package:flutter/material.dart';

class CheckBoxListTileScreen extends StatefulWidget {
  const CheckBoxListTileScreen({Key? key}) : super(key: key);

  @override
  State<CheckBoxListTileScreen> createState() => _CheckBoxListTileScreenState();
}

class _CheckBoxListTileScreenState extends State<CheckBoxListTileScreen> {
  bool isValid = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CheckBoxListTile'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            CheckboxListTile(
                title: const Text("Es válido - leading"),
                secondary: const Icon(Icons.check),
                controlAffinity: ListTileControlAffinity.leading,
                value: isValid,
                activeColor: Colors.green,
                checkColor: Colors.red,
                onChanged: (value) {
                  isValid = value ?? false;
                  setState(() {});
                }),
            CheckboxListTile(
                title: const Text("Es válido - trailing"),
                secondary: const Icon(Icons.check),
                controlAffinity: ListTileControlAffinity.trailing,
                value: isValid,
                activeColor: Colors.red,
                checkColor: Colors.green,
                onChanged: (value) {
                  isValid = value ?? false;
                  setState(() {});
                }),
            CheckboxListTile(
                title: const Text("Es válido - platform"),
                secondary: const Icon(Icons.check),
                controlAffinity: ListTileControlAffinity.platform,
                value: isValid,
                onChanged: (value) {
                  isValid = value ?? false;
                  setState(() {});
                }),
          ],
        ),
      ),
    );
  }
}
