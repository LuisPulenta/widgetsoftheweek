import 'package:flutter/material.dart';

class GestureDetectorScreen extends StatefulWidget {
  const GestureDetectorScreen({Key? key}) : super(key: key);

  @override
  State<GestureDetectorScreen> createState() => _GestureDetectorScreenState();
}

class _GestureDetectorScreenState extends State<GestureDetectorScreen> {
  String texto = 'Todavía no pasó nada';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GestureDetector'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  texto = "Hiciste Tap en el ícono";
                });
              },
              onDoubleTap: () {
                setState(() {
                  texto = "Hiciste DoubleTap en el ícono";
                });
              },
              child: const Icon(
                Icons.home,
                size: 40,
                color: Colors.red,
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  texto = "Hiciste Tap en el container";
                });
              },
              onDoubleTap: () {
                setState(() {
                  texto = "Hiciste DoubleTap en el container";
                });
              },
              child: Container(
                width: 100,
                height: 100,
                color: Colors.amber,
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  texto = "Hiciste Tap en la imagen";
                });
              },
              onDoubleTap: () {
                setState(() {
                  texto = "Hiciste DoubleTap en la imagen";
                });
              },
              child: Image.asset(
                "assets/logoflutter.png",
                width: 100,
                height: 100,
              ),
            ),
            Text(texto,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold))
          ],
        ),
      ),
    );
  }
}
