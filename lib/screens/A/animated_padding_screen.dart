import 'package:flutter/material.dart';

class AnimatedPaddingScreen extends StatefulWidget {
  const AnimatedPaddingScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedPaddingScreen> createState() => _AnimatedPaddingScreenState();
}

class _AnimatedPaddingScreenState extends State<AnimatedPaddingScreen> {
  double padValue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedPadding'),
        centerTitle: true,
      ),
      body: Center(
        child: AnimatedPadding(
          padding: EdgeInsets.all(padValue),
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
          child: Container(
            // width: 200,
            // height: 200,
            color: Colors.blue,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        onPressed: () {
          if (padValue == 0) {
            padValue = 150;
            setState(() {});
            return;
          } else {
            padValue = 0;
            setState(() {});
            return;
          }
        },
        child: const Icon(Icons.play_arrow),
      ),
    );
  }
}
