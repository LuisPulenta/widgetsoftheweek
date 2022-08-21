import 'package:flutter/material.dart';

class ExpandedScreen extends StatelessWidget {
  const ExpandedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Expanded'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const Text("Cuadrados alineados a la izquierda"),
            Row(
              children: const [
                Rectangulo(Colors.blue),
                Rectangulo(Colors.blue),
                Rectangulo(Colors.blue),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Text("Cuadrados centrados"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Rectangulo(Colors.blue),
                Rectangulo(Colors.blue),
                Rectangulo(Colors.blue),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Text("Cuadrados del centro CON EXPANDED"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Rectangulo(Colors.blue),
                Expanded(child: Rectangulo(Colors.red)),
                Rectangulo(Colors.blue),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Text("Dos Cuadrados CON EXPANDED y c/u con flex"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Rectangulo(Colors.blue),
                Expanded(flex: 1, child: Rectangulo(Colors.red)),
                Rectangulo(Colors.blue),
                Expanded(flex: 2, child: Rectangulo(Colors.orange)),
                Rectangulo(Colors.blue),
              ],
            ),
          ],
        ));
  }
}

//---------------- Rectangulo -------------------
class Rectangulo extends StatelessWidget {
  final Color color;

  const Rectangulo(this.color, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3),
      child: Container(
        width: 70,
        height: 70,
        decoration: BoxDecoration(color: color),
      ),
    );
  }
}
