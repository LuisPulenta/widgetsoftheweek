import 'package:flutter/material.dart';

class FittedBoxScreen extends StatelessWidget {
  const FittedBoxScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('FittedBox'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 5,
              ),
              const Text("Un texto con letra de tamaño 40"),
              const SizedBox(
                height: 5,
              ),
              const Text("Letra tamaño 40",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                      fontWeight: FontWeight.bold)),
              const SizedBox(
                height: 5,
              ),
              const Text(
                  "Un texto con letra de tamaño 40 en un Container de 200x200"),
              const SizedBox(
                height: 5,
              ),
              Container(
                width: 200,
                height: 200,
                color: Colors.orange,
                child: const Text("Letra tamaño 40",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 40,
                        fontWeight: FontWeight.bold)),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                  "Un texto con letra de tamaño 40 metido en FittedBox, en un Container de 200x200 "),
              const SizedBox(
                height: 5,
              ),
              Container(
                width: 200,
                height: 200,
                color: Colors.orange,
                child: const FittedBox(
                  child: Text("Letra tamaño 40",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 40,
                          fontWeight: FontWeight.bold)),
                ),
              ),
            ],
          ),
        ));
  }
}
