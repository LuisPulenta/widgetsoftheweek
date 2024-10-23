import 'package:flutter/material.dart';

class LimitedBoxScreen extends StatelessWidget {
  const LimitedBoxScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LimitedBox'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          const Text("Acá no funciona el LimitedBox"),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: 100,
            height: 100,
            child: LimitedBox(
              maxHeight: 30,
              maxWidth: 30,
              child: Container(
                color: Colors.red,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text("Acá funciona el LimitedBox"),
          Expanded(
            child: ListView(
              children: [
                for (var i = 0; i < 10; i++)
                  LimitedBox(
                    maxHeight: 120,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        color: Colors.amber,
                      ),
                    ),
                  )
              ],
            ),
          )
        ],
      ),
    );
  }
}
