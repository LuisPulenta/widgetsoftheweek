import 'package:flutter/material.dart';

class FlexibleScreen extends StatelessWidget {
  const FlexibleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flexible'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Flexible(
                flex: 2,
                fit: FlexFit.tight,
                child: Container(
                    color: Colors.blue,
                    child: const Center(
                        child: Text("flex:2",
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold))))),
            Flexible(
                flex: 3,
                child: Container(
                    color: Colors.red,
                    child: const Center(
                        child: Text("flex:3",
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold))))),
            Flexible(
                flex: 1,
                child: Container(
                    color: Colors.yellow,
                    child: const Center(
                        child: Text("flex:1",
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold))))),
          ],
        ));
  }
}
