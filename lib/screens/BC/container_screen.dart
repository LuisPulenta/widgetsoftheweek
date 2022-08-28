import 'package:flutter/material.dart';

class ContainerScreen extends StatelessWidget {
  const ContainerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Container'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 5,
                ),
                const Text("Texto sin Container"),
                const SizedBox(
                  height: 5,
                ),
                // ignore: avoid_unnecessary_containers
                Container(
                    child: const Text(
                        "Texto con Container pero sin ninguna propiedad")),
                const SizedBox(
                  height: 5,
                ),
                Container(
                    color: Colors.orange,
                    child: const Text("Texto con Container con color")),
                const SizedBox(
                  height: 5,
                ),
                Container(
                    color: Colors.amberAccent,
                    padding: const EdgeInsets.all(10),
                    child: const Text("Texto con Container con padding")),
                const SizedBox(
                  height: 5,
                ),
                Container(
                    color: Colors.cyanAccent,
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.all(10),
                    child: const Text("Texto con Container con margin")),
                const SizedBox(
                  height: 5,
                ),
                Container(
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.green,
                    ),
                    child: const Text("Texto con decoration")),
                const SizedBox(
                  height: 5,
                ),
                Container(
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.all(10),
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.yellow,
                    ),
                    child: const Text("Alignment center")),
                const SizedBox(
                  height: 5,
                ),
                Container(
                    height: 50,
                    width: 200,
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.all(10),
                    alignment: Alignment.center,
                    color: Colors.pink,
                    child: const Text("Con width 200 y height 50")),
                const SizedBox(
                  height: 5,
                ),
                Container(
                    height: 40,
                    width: 100,
                    color: Colors.brown,
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.all(10),
                    alignment: Alignment.center,
                    constraints:
                        const BoxConstraints.tightForFinite(width: 300),
                    child: const Text("Con constraints")),
                const SizedBox(
                  height: 50,
                ),
                Container(
                    height: 100,
                    width: 100,
                    color: Colors.purpleAccent,
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.all(10),
                    transform: Matrix4.rotationZ(-0.5),
                    child: const Text("Con transform")),
              ],
            ),
          ),
        ));
  }
}
