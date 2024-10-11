import 'package:flutter/material.dart';

class SemanticsScreen extends StatelessWidget {
  const SemanticsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LimitedBox'),
        centerTitle: true,
      ),
      body: Center(
        child: Stack(
          children: [
            Container(
              width: 200,
              height: 200,
              color: Colors.red,
            ),
            Semantics(
              label: "Imagen de Harry Potter",
              enabled: true,
              readOnly: true,
              child: CircleAvatar(
                child: Image.asset("assets/hp.jpg"),
                radius: 100,
              ),
            )
          ],
        ),
      ),
    );
  }
}
