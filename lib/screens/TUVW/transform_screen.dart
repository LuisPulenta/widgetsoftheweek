import 'package:flutter/material.dart';
import 'dart:math';

class TransformScreen extends StatelessWidget {
  const TransformScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transform'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: const [
                      Text("Normal"),
                      SizedBox(
                        height: 15,
                      ),
                      RectAzul(),
                    ],
                  ),
                  Column(
                    children: [
                      const Text("Rotate 45°"),
                      const SizedBox(
                        height: 15,
                      ),
                      Transform.rotate(angle: pi / 4, child: const RectAzul()),
                    ],
                  ),
                  Column(
                    children: [
                      const Text("Rotate 30°"),
                      const SizedBox(
                        height: 15,
                      ),
                      Transform.rotate(angle: pi / 6, child: const RectAzul()),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: const [
                      Text("Normal"),
                      SizedBox(
                        height: 15,
                      ),
                      RectAzul(),
                    ],
                  ),
                  Column(
                    children: [
                      const Text("Scale 1.5"),
                      const SizedBox(
                        height: 15,
                      ),
                      Transform.scale(scale: 1.5, child: const RectAzul()),
                    ],
                  ),
                  Column(
                    children: [
                      const Text("Scale 0.8"),
                      const SizedBox(
                        height: 15,
                      ),
                      Transform.scale(scale: 0.8, child: const RectAzul()),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: const [
                      Text("Normal"),
                      SizedBox(
                        height: 15,
                      ),
                      RectAzul(),
                    ],
                  ),
                  Column(
                    children: [
                      const Text("Translate 10,10"),
                      const SizedBox(
                        height: 15,
                      ),
                      Transform.translate(
                          offset: const Offset(10, 10),
                          child: const RectAzul()),
                    ],
                  ),
                  Column(
                    children: [
                      const Text("Translate -10,-10"),
                      const SizedBox(
                        height: 15,
                      ),
                      Transform.translate(
                          offset: const Offset(-10, -10),
                          child: const RectAzul()),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: const [
                      Text("Normal"),
                      SizedBox(
                        height: 15,
                      ),
                      RectAzul(),
                    ],
                  ),
                  Column(
                    children: [
                      const Text("Matrix4.skewX(0.3)"),
                      const SizedBox(
                        height: 15,
                      ),
                      Transform(
                          transform: Matrix4.skewX(0.3),
                          child: const RectAzul()),
                    ],
                  ),
                  Column(
                    children: [
                      const Text("Matrix4.skewY(0.3)"),
                      const SizedBox(
                        height: 15,
                      ),
                      Transform(
                          transform: Matrix4.skewY(0.3),
                          child: const RectAzul()),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: const [
                      Text("Normal"),
                      SizedBox(
                        height: 15,
                      ),
                      RectAzul(),
                    ],
                  ),
                  Column(
                    children: [
                      const Text("transform: Matrix4.identity"),
                      const SizedBox(
                        height: 15,
                      ),
                      Transform(
                          transform: Matrix4.identity()
                            ..setEntry(3, 2, 0.01)
                            ..rotateX(0.6),
                          alignment: FractionalOffset.center,
                          child: const RectAzul()),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

//--------------- Rectangulo ----------------
class RectAzul extends StatelessWidget {
  const RectAzul({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      decoration: const BoxDecoration(color: Colors.blue),
      child: const Align(
        alignment: Alignment.center,
        child: Text("T",
            style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.bold)),
      ),
    );
  }
}
