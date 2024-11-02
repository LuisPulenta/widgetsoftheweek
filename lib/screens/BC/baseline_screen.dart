import 'package:flutter/material.dart';

class BaselineScreen extends StatelessWidget {
  const BaselineScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Baseline'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 250,
              height: 150,
              color: Colors.amber,
              child: const Text('Texto sin Baseline'),
            ),
            Container(
              width: 250,
              height: 150,
              color: Colors.amber,
              child: const Baseline(
                baseline: 40,
                baselineType: TextBaseline.alphabetic,
                child: Text('Texto con Baseline 40'),
              ),
            ),
            Container(
              width: 250,
              height: 150,
              color: Colors.amber,
              child: const Baseline(
                baseline: 100,
                baselineType: TextBaseline.alphabetic,
                child: Text('Texto con Baseline 100'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
