import 'package:flutter/material.dart';

class PositionedScreen extends StatelessWidget {
  const PositionedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Positioned'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 5,
          ),
          Center(
            child: Container(
              width: 200,
              height: 160,
              color: Colors.yellow,
              child: Stack(
                children: const [
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Text("left:0 - top:0"),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Center(
            child: Container(
              width: 220,
              height: 180,
              color: Colors.orange,
              child: Stack(
                children: const [
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: Text("right:0 - bottom:0"),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Center(
            child: Container(
              width: 250,
              height: 130,
              color: Colors.pink,
              child: Stack(
                children: const [
                  Positioned(
                    left: 20,
                    top: 30,
                    child: Text("left:20 - top:30"),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Center(
            child: Container(
              width: 190,
              height: 100,
              color: Colors.green,
              child: Stack(
                children: const [
                  Positioned(
                    right: 50,
                    bottom: 40,
                    child: Text("right:50 - bottom:40"),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
