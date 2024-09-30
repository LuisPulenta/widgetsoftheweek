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
              Chip(
                label: Text(
                  "Talleres",
                  style: TextStyle(color: Colors.white),
                ),
                backgroundColor: Colors.blue,
              ),
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
              direction: Axis.horizontal,
              alignment: WrapAlignment.center,
              spacing: 60,
              runSpacing: 20,
              children: const [
                Chip(
                  avatar: CircleAvatar(
                    child: Text(
                      "T",
                      style: TextStyle(
                          color: Color.fromARGB(255, 6, 17, 165),
                          fontWeight: FontWeight.bold),
                    ),
                    backgroundColor: Colors.white,
                  ),
                  label: Text(
                    "Talleres",
                    style: TextStyle(color: Colors.white),
                  ),
                  backgroundColor: Color.fromARGB(255, 6, 17, 165),
                ),
                Chip(
                  label: Text(
                    "Belgrano",
                    style: TextStyle(color: Colors.white),
                  ),
                  backgroundColor: Color.fromARGB(255, 62, 149, 220),
                ),
                Chip(
                  label: Text(
                    "River",
                    style: TextStyle(color: Colors.white),
                  ),
                  backgroundColor: Colors.red,
                ),
                Chip(
                  label: Text(
                    "Boca",
                    style: TextStyle(color: Colors.yellow),
                  ),
                  backgroundColor: Color.fromARGB(255, 13, 25, 163),
                ),
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
