import 'package:flutter/material.dart';

class WrapScreen extends StatelessWidget {
  const WrapScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wrap'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          const Text("Cuadrados con espacio insuficiente"),
          Row(
            children: const [
              Rectangulo(Colors.blue),
              Rectangulo(Colors.blue),
              Rectangulo(Colors.blue),
              Rectangulo(Colors.blue),
              Rectangulo(Colors.blue),
              Rectangulo(Colors.blue),
              Rectangulo(Colors.blue),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Text("Cuadrados en un wrap"),
          Expanded(
            child: Wrap(
              direction: Axis.vertical,
              alignment: WrapAlignment.center,
              spacing: 40,
              runSpacing: 20,
              children: const [
                Rectangulo(Colors.orange),
                Rectangulo(Colors.orange),
                Rectangulo(Colors.orange),
                Rectangulo(Colors.red),
                Rectangulo(Colors.red),
                Rectangulo(Colors.red),
                Rectangulo(Colors.green),
                Rectangulo(Colors.green),
                Rectangulo(Colors.green),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
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
