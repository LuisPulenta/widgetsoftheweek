import 'package:flutter/material.dart';

class ClipRRectScreen extends StatelessWidget {
  const ClipRRectScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ClipRRect'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                width: 120,
                height: 120,
                color: Colors.orange,
                child: const Center(
                  child: Text('Radio 10'),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Container(
                width: 120,
                height: 120,
                color: Colors.pink,
                child: const Center(
                  child: Text('Radio 30'),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Container(
                width: 120,
                height: 120,
                color: Colors.purpleAccent,
                child: const Center(
                  child: Text('Radio 50'),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: ClipOval(
              child: Container(
                width: 120,
                height: 80,
                color: Colors.yellow,
                child: const Center(
                  child: Text('Clip Oval'),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: ClipPath(
              clipper: MyCustomClipper(),
              child: Container(
                width: 120,
                height: 120,
                color: Colors.cyan,
                child: const Center(
                  child: Text('Clip Path'),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}

//-----------------------------------------------------------------------
class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double ancho = size.width;
    double alto = size.height;
    Path path = Path()
      ..moveTo(0.3 * ancho, 0 * alto)
      ..lineTo(0.7 * ancho, 0 * alto)
      ..lineTo(1 * ancho, 0.3 * alto)
      ..lineTo(1 * ancho, 0.7 * alto)
      ..lineTo(0.7 * ancho, 1 * alto)
      ..lineTo(0.3 * ancho, 1 * alto)
      ..lineTo(0 * ancho, 0.7 * alto)
      ..lineTo(0 * ancho, 0.3 * alto)
      ..fillType;

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
