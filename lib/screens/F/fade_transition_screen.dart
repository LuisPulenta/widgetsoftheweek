import 'package:flutter/material.dart';

class FadeTransitionScreen extends StatefulWidget {
  const FadeTransitionScreen({Key? key}) : super(key: key);

  @override
  State<FadeTransitionScreen> createState() => _FadeTransitionScreenState();
}

class _FadeTransitionScreenState extends State<FadeTransitionScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> opacidad;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 4500));
    opacidad = Tween(begin: 0.0, end: 1.0).animate(controller);
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FadeTransition'),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: double.infinity,
        color: Colors.white70,
        child: Wrap(direction: Axis.vertical, spacing: 50, children: [
          const Rectangulo(
            color: Colors.red,
            opacity: 1,
          ),
          FadeTransition(
            opacity: opacidad,
            child: const Rectangulo(
              color: Colors.blue,
              opacity: 1,
            ),
          ),
          const Rectangulo(
            color: Colors.yellow,
            opacity: 1,
          ),
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.forward(from: 0.3);
        },
        child: const Icon(Icons.play_arrow),
      ),
    );
  }
}

//------------------ Rectangulo ---------------------
class Rectangulo extends StatelessWidget {
  final Color color;
  final double opacity;

  const Rectangulo({Key? key, required this.color, required this.opacity})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      duration: const Duration(milliseconds: 600),
      curve: Curves.easeOut,
      opacity: opacity,
      child: Container(
        width: 200,
        height: 200,
        decoration: BoxDecoration(
          color: color,
        ),
      ),
    );
  }
}
