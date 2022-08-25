// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';

class SizedBoxScreen extends StatelessWidget {
  const SizedBoxScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('SizedBox'),
          centerTitle: true,
        ),
        body: Column(
          children: const [
            SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 100,
              height: 50,
              child: Rectangulo(),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: Rectangulo(),
            ),
            SizedBox(
              height: 150,
            ),
            SizedBox(
              width: 100,
              height: 150,
              child: Rectangulo(),
            ),
          ],
        ));
  }
}

class Rectangulo extends StatelessWidget {
  const Rectangulo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      decoration: const BoxDecoration(color: Colors.blue),
    );
  }
}
