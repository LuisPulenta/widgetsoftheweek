import 'package:flutter/material.dart';

class AnimatedCrossFadeScreen extends StatefulWidget {
  const AnimatedCrossFadeScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedCrossFadeScreen> createState() =>
      _AnimatedCrossFadeScreenState();
}

class _AnimatedCrossFadeScreenState extends State<AnimatedCrossFadeScreen> {
  bool state = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedCrossFade'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            AnimatedCrossFade(
              crossFadeState:
                  state ? CrossFadeState.showFirst : CrossFadeState.showSecond,
              duration: const Duration(milliseconds: 1000),
              firstCurve: Curves.easeOut,
              secondCurve: Curves.easeIn,
              sizeCurve: Curves.bounceOut,
              firstChild: const MyWidget1(),
              secondChild: const MyWidget2(),
            ),
            AnimatedCrossFade(
              crossFadeState:
                  state ? CrossFadeState.showFirst : CrossFadeState.showSecond,
              duration: const Duration(milliseconds: 1000),
              firstCurve: Curves.elasticOut,
              secondCurve: Curves.elasticIn,
              sizeCurve: Curves.bounceInOut,
              firstChild: const MyWidget1(),
              secondChild: const MyWidget3(),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          state = !state;
          setState(() {});
        },
        child: const Icon(Icons.play_arrow),
      ),
    );
  }
}

//------------------------------------------------------------------------------------
class MyWidget1 extends StatelessWidget {
  const MyWidget1({super.key});

  @override
  Widget build(BuildContext context) {
    return const Cartel(
      texto: "HOLA",
      color: Colors.blue,
      radio: 5,
      alto: 100,
    );
  }
}

//------------------------------------------------------------------------------------
class MyWidget2 extends StatelessWidget {
  const MyWidget2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Cartel(
      texto: "CHAU",
      color: Colors.red,
      radio: 100,
      alto: 100,
    );
  }
}

//------------------------------------------------------------------------------------
class MyWidget3 extends StatelessWidget {
  const MyWidget3({super.key});

  @override
  Widget build(BuildContext context) {
    return const Cartel(
      texto: "ADIOS",
      color: Colors.yellow,
      radio: 100,
      alto: 200,
    );
  }
}

//------------------------------------------------------------------------------------
class Cartel extends StatelessWidget {
  final String texto;
  final Color color;
  final double radio;
  final double alto;

  const Cartel(
      {super.key,
      required this.texto,
      required this.color,
      required this.radio,
      required this.alto});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: alto,
      width: 200,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(radio),
      ),
      child: Center(
        child: Text(texto,
            style: const TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.bold)),
      ),
    );
  }
}
