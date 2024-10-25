import 'package:flutter/material.dart';
import 'dart:math';

class ListGenerateScreen extends StatelessWidget {
  const ListGenerateScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final stars =
        List.generate(5, (i) => const Icon(Icons.star_border_outlined));
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListGenerate'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 60,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: List.generate(25, (i) => const _Rectangulo()),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const Spacer(),
                const Text("Título"),
                const Spacer(),
                ...stars,
                const Spacer(),
                IconButton(onPressed: () {}, icon: const Icon(Icons.check)),
                const Spacer(),
              ],
            )
          ],
        ),
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
