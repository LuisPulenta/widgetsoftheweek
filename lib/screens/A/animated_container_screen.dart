import 'package:flutter/material.dart';
import 'dart:math' show Random;

class AnimatedContainerScreen extends StatefulWidget {
  const AnimatedContainerScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedContainerScreen> createState() =>
      _AnimatedContainerScreenState();
}

class _AnimatedContainerScreenState extends State<AnimatedContainerScreen> {
//------------------- Variables ----------------------
  double _width = 50;
  double _height = 50;
  Color _color = Colors.indigo;
  Color _color2 = Colors.red;
  double _border = 5;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(10);

//------------------- Pantalla ----------------------
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedContainer'),
        centerTitle: true,
      ),
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
          width: _width,
          height: _height,
          decoration: BoxDecoration(
            color: _color,
            borderRadius: _borderRadius,
            border: Border.all(width: _border, color: _color2),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.play_arrow, size: 40),
          onPressed: () {
            final random = Random();
            _width = random.nextInt(300).toDouble() + 70;
            _height = random.nextInt(300).toDouble() + 70;
            _color = Color.fromRGBO(random.nextInt(255), random.nextInt(255),
                random.nextInt(255), 1);
            _color2 = Color.fromRGBO(random.nextInt(255), random.nextInt(255),
                random.nextInt(255), 1);
            _borderRadius =
                BorderRadius.circular(random.nextInt(100).toDouble() + 10);
            _border = random.nextInt(20).toDouble();
            setState(() {});
          }),
    );
  }
}
