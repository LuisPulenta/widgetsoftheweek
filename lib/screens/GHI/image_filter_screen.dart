import 'dart:ui';

import 'package:flutter/material.dart';

class ImageFilterScreen extends StatelessWidget {
  const ImageFilterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ImageFilter'),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Center(
            child: Image.network(
                "https://cdn.elitebabes.com/content/2208137/0001-09_1200.jpg"),
          ),
          Positioned(
            top: 430,
            bottom: 220,
            left: 280,
            child: ClipRect(
              child: SizedBox(
                width: 100,
                height: 100,
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                  child: Container(),
                ),
              ),
            ),
          ),
          const Center(
            child: Text("No blur aquí",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),
          )
        ],
      ),
    );
  }
}
