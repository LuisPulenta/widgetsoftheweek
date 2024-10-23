import 'package:flutter/material.dart';

class HeroMode2Screen extends StatelessWidget {
  const HeroMode2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hero Mode Detalle'),
        centerTitle: true,
      ),
      body: Column(
        children: const [
          Hero(
            tag: "Luis",
            child: FlutterLogo(
              size: 450,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(30),
            child: Text(
              'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. ',
              style: TextStyle(fontSize: 30),
            ),
          ),
        ],
      ),
    );
  }
}
