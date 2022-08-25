import 'package:flutter/material.dart';

class AlignScreen extends StatelessWidget {
  const AlignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Align'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: const BoxDecoration(color: Colors.blue),
                child: const Center(child: Text("center")),
              ),
              Container(
                width: 100,
                height: 100,
                decoration: const BoxDecoration(color: Colors.blue),
                child: const Align(
                  alignment: Alignment.bottomLeft,
                  child: Text("bottomLeft"),
                ),
              ),
              Container(
                width: 100,
                height: 100,
                decoration: const BoxDecoration(color: Colors.blue),
                child: const Align(
                  alignment: Alignment.topCenter,
                  child: Text("topCenter"),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: const BoxDecoration(color: Colors.blue),
                child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Text("centerLeft"),
                ),
              ),
              Container(
                width: 100,
                height: 100,
                decoration: const BoxDecoration(color: Colors.blue),
                child: const Align(
                    alignment: Alignment.bottomRight,
                    child: Text("bottomRight")),
              ),
              Container(
                width: 100,
                height: 100,
                decoration: const BoxDecoration(color: Colors.blue),
                child: const Align(
                  alignment: Alignment.topRight,
                  child: Text("topRight"),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: const BoxDecoration(color: Colors.blue),
                child: const Align(
                  alignment: Alignment(0.5, 0.5),
                  child: Text("0.5,0.5"),
                ),
              ),
              Container(
                width: 100,
                height: 100,
                decoration: const BoxDecoration(color: Colors.blue),
                child: const Align(
                  alignment: Alignment(-0.5, 0.5),
                  child: Text("-0.5,0.5"),
                ),
              ),
              Container(
                width: 100,
                height: 100,
                decoration: const BoxDecoration(color: Colors.blue),
                child: const Align(
                  alignment: Alignment(0.5, -0.5),
                  child: Text("0.5,-0.5"),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                height: double.infinity,
                color: Colors.yellow,
                child: Stack(
                  children: const [
                    Align(
                      alignment: Alignment(-0.5, 0.5),
                      child: Text("Hola"),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
