import 'package:flutter/material.dart';

class InteractiveViewerScreen extends StatelessWidget {
  const InteractiveViewerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('InteractiveViewer'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text("constrained: true"),
          SizedBox(
            height: 300,
            child: InteractiveViewer(
              constrained: true,
              child: Image.asset("assets/hp.jpg"),
            ),
          ),
          const Text("constrained: false"),
          SizedBox(
            height: 300,
            child: InteractiveViewer(
              constrained: false,
              child: Image.asset("assets/hp.jpg"),
            ),
          ),
        ],
      ),
    );
  }
}
