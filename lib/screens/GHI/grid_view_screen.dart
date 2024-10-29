import 'package:flutter/material.dart';
import 'dart:math';

class GridViewScreen extends StatelessWidget {
  const GridViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GridView'),
        centerTitle: true,
      ),
      body: GridView.count(
        crossAxisCount: 8,
        mainAxisSpacing: 20,
        crossAxisSpacing: 10,
        children: List.generate(1000, (i) => const _Rectangulo()),
      ),
    );
  }
}

//---------------------------------------------------------------------
class _Rectangulo extends StatelessWidget {
  const _Rectangulo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final rnd = Random();

    return Container(
      width: 60,
      height: 60,
      child: Align(
        alignment: Alignment.center,
        child: Text(generateRandomString(1),
            style: TextStyle(
                color: Color.fromRGBO(
                  rnd.nextInt(255),
                  rnd.nextInt(255),
                  rnd.nextInt(255),
                  1,
                ),
                fontSize: 28,
                fontWeight: FontWeight.bold)),
      ),
      decoration: BoxDecoration(
        color: Color.fromRGBO(
          rnd.nextInt(255),
          rnd.nextInt(255),
          rnd.nextInt(255),
          1,
        ),
      ),
    );
  }

  String generateRandomString(int len) {
    var r = Random();
    return String.fromCharCodes(
        List.generate(len, (index) => r.nextInt(33) + 65));
  }
}
