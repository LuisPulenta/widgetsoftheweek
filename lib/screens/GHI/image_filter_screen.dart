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
                "https://i.pinimg.com/736x/01/df/de/01dfde419767da43848f510ee951d42e.jpg"),
          ),
          Positioned(
            top: 200,
            left: 140,
            child: ClipRect(
              child: SizedBox(
                width: 150,
                height: 150,
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
