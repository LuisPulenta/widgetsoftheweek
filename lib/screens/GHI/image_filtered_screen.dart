import 'package:flutter/material.dart';
import 'dart:ui';

class ImageFilteredScreen extends StatelessWidget {
  const ImageFilteredScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ImageFiltered'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                "assets/cuadrada.jpg",
                width: 100,
                height: 100,
                fit: BoxFit.contain,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ImageFiltered(
                    imageFilter: ImageFilter.blur(sigmaX: 3),
                    child: Image.asset(
                      "assets/cuadrada.jpg",
                      width: 100,
                      height: 100,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ImageFiltered(
                    imageFilter: ImageFilter.blur(sigmaY: 3),
                    child: Image.asset(
                      "assets/cuadrada.jpg",
                      width: 100,
                      height: 100,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ImageFiltered(
                    imageFilter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
                    child: Image.asset(
                      "assets/cuadrada.jpg",
                      width: 100,
                      height: 100,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ImageFiltered(
                    imageFilter:
                        ImageFilter.matrix(Matrix4.rotationX(0.8).storage),
                    child: Image.asset(
                      "assets/cuadrada.jpg",
                      width: 100,
                      height: 100,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ImageFiltered(
                    imageFilter:
                        ImageFilter.matrix(Matrix4.rotationY(0.8).storage),
                    child: Image.asset(
                      "assets/cuadrada.jpg",
                      width: 100,
                      height: 100,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ImageFiltered(
                    imageFilter:
                        ImageFilter.matrix(Matrix4.rotationZ(0.2).storage),
                    child: Image.asset(
                      "assets/cuadrada.jpg",
                      width: 100,
                      height: 100,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
