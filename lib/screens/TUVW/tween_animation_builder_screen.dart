import 'package:flutter/material.dart';

class TweenAnimationBuilderScreen extends StatefulWidget {
  const TweenAnimationBuilderScreen({Key? key}) : super(key: key);

  @override
  State<TweenAnimationBuilderScreen> createState() =>
      _TweenAnimationBuilderScreenState();
}

class _TweenAnimationBuilderScreenState
    extends State<TweenAnimationBuilderScreen> {
  double targetValue = 100;
  Color colorValue = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TweenAnimationBuilder'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text("Un icono cambia de tamaño y el otro de color"),
            TweenAnimationBuilder(
              tween: Tween<double>(begin: 0, end: targetValue),
              duration: const Duration(milliseconds: 500),
              builder: (BuildContext context, double size, Widget? child) {
                return Column(
                  children: [
                    IconButton(
                      iconSize: size,
                      color: Colors.orangeAccent,
                      icon: const Icon(Icons.flutter_dash),
                      onPressed: () {
                        setState(() {
                          targetValue = targetValue == 100 ? 250 : 100;
                        });
                      },
                    ),
                    IconButton(
                      iconSize: 250,
                      color: colorValue,
                      icon: const Icon(Icons.flutter_dash),
                      onPressed: () {
                        setState(() {
                          colorValue = colorValue == Colors.blue
                              ? Colors.red
                              : Colors.blue;
                        });
                      },
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
