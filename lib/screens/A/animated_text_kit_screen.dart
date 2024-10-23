import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class AnimatedTextKitScreen extends StatelessWidget {
  const AnimatedTextKitScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedTextKit'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            AnimatedTextKit(
              animatedTexts: [
                TyperAnimatedText('Talleres'),
                TyperAnimatedText('Belgrano'),
                TyperAnimatedText('River'),
                TyperAnimatedText('Boca'),
              ],
            ),
            RotateAnimatedTextKit(
              text: const ['Talleres', 'Belgrano', 'River', 'Boca'],
              textStyle: TextStyle(fontSize: 40),
            ),
            ScaleAnimatedTextKit(
              text: const ['Talleres', 'Belgrano', 'River', 'Boca'],
              textStyle: TextStyle(fontSize: 40),
            ),
            AnimatedTextKit(
              animatedTexts: [
                ColorizeAnimatedText('TALLERES CAMPEON!!!!',
                    textAlign: TextAlign.center,
                    textStyle: const TextStyle(
                        fontSize: 50, fontWeight: FontWeight.bold),
                    colors: [
                      Colors.blue,
                      Colors.red,
                      Colors.yellow,
                      Colors.green
                    ]),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
