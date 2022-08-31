import 'package:flutter/material.dart';

class StackScreen extends StatelessWidget {
  const StackScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack'),
        centerTitle: true,
      ),
      body: Center(
        child: Stack(
          fit: StackFit.loose,
          alignment: AlignmentDirectional.bottomCenter,
          overflow: Overflow.clip,
          children: [
            CuadradoConColor(lado: 300, color: Colors.yellow),
            CuadradoConColor(lado: 250, color: Colors.orange),
            CuadradoConColor(lado: 200, color: Colors.green),
            CuadradoConColor(lado: 150, color: Colors.red),
            CuadradoConColor(lado: 100, color: Colors.blue),
            Positioned(
              left: 250,
              top: 250,
              child: CuadradoConColor(lado: 100, color: Colors.pink),
            ),
          ],
        ),
      ),
    );
  }
}

//----------------- CuadradoConColor -------------------
class CuadradoConColor extends StatelessWidget {
  final double lado;
  final Color color;

  CuadradoConColor({required this.lado, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: lado,
      height: lado,
      decoration: BoxDecoration(color: color),
    );
  }
}
