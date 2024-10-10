import 'package:flutter/material.dart';

class AnimatedPositionedScreen extends StatefulWidget {
  const AnimatedPositionedScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedPositionedScreen> createState() =>
      _AnimatedPositionedScreenState();
}

class _AnimatedPositionedScreenState extends State<AnimatedPositionedScreen> {
  bool isTop = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedPositioned'),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Container(
            color: Colors.amber,
          ),
          AnimatedPositioned(
            top: isTop ? 10 : 200,
            left: 100,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.purple,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        onPressed: () {
          isTop = !isTop;
          setState(() {});
        },
        child: const Icon(Icons.play_arrow),
      ),
    );
  }
}
