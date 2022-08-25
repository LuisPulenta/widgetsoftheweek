import 'package:flutter/material.dart';

class OpacityScreen extends StatefulWidget {
  const OpacityScreen({Key? key}) : super(key: key);

  @override
  State<OpacityScreen> createState() => _OpacityScreenState();
}

class _OpacityScreenState extends State<OpacityScreen> {
  double _opacity = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Opacity'),
          centerTitle: true,
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FloatingActionButton(
                heroTag: 1,
                child: const Text("Off"),
                onPressed: () {
                  _opacity = 0;
                  setState(() {});
                }),
            const SizedBox(width: 15),
            FloatingActionButton(
                heroTag: 2,
                child: const Text("On"),
                onPressed: () {
                  _opacity = 1;
                  setState(() {});
                }),
          ],
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
                  child: const Center(
                    child: Text("Sin Opacity"),
                  ),
                ),
                Opacity(
                  opacity: 0.7,
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: const BoxDecoration(color: Colors.blue),
                    child: const Center(
                      child: Text("Opacity 0.7"),
                    ),
                  ),
                ),
                Opacity(
                  opacity: 0.3,
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: const BoxDecoration(color: Colors.blue),
                    child: const Center(
                      child: Text("Opacity 0.3"),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.yellow,
                    child: const Center(child: Text("100x100")),
                  ),
                  Opacity(
                    opacity: 0.5,
                    child: Container(
                      width: 150,
                      height: 150,
                      color: Colors.green,
                      child: const Center(child: Text("150x150")),
                    ),
                  ),
                  Opacity(
                    opacity: 0.2,
                    child: Container(
                      width: 200,
                      height: 200,
                      color: Colors.orange,
                      child: const Center(child: Text("200x200")),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            AnimatedOpacity(
              opacity: _opacity,
              duration: const Duration(milliseconds: 1000),
              curve: Curves.bounceInOut,
              child: Container(
                width: 200,
                height: 200,
                color: Colors.purple,
                child: const Center(child: Text("Animated Opacity")),
              ),
            ),
          ],
        ));
  }
}
