import 'package:flutter/material.dart';

class AspectRatioScreen extends StatelessWidget {
  const AspectRatioScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AspectRatio'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: AspectRatio(
                    aspectRatio: 1 / 1,
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.amber,
                      child: const Align(
                          alignment: Alignment.center, child: Text('1 / 1')),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: AspectRatio(
                    aspectRatio: 4 / 3,
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.green,
                      child: const Align(
                          alignment: Alignment.center, child: Text('4 / 3')),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: AspectRatio(
                    aspectRatio: 16 / 9,
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.orange,
                      child: const Align(
                          alignment: Alignment.center, child: Text('16 / 9')),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: AspectRatio(
                    aspectRatio: 2 / 5,
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.cyan,
                      child: const Align(
                          alignment: Alignment.center, child: Text('2 / 5')),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
