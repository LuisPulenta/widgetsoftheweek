import 'package:flutter/material.dart';

class ColorFilteredScreen extends StatelessWidget {
  const ColorFilteredScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ColorFiltered'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              "assets/logoflutter.png",
              width: 100,
              height: 100,
            ),
            Image.asset(
              "assets/logoflutter.png",
              width: 100,
              height: 100,
              color: Colors.red,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ColorFiltered(
                  colorFilter:
                      const ColorFilter.mode(Colors.blue, BlendMode.modulate),
                  child: Image.asset(
                    "assets/logoflutter.png",
                    width: 100,
                    height: 100,
                  ),
                ),
                ColorFiltered(
                  colorFilter:
                      const ColorFilter.mode(Colors.red, BlendMode.modulate),
                  child: Image.asset(
                    "assets/logoflutter.png",
                    width: 100,
                    height: 100,
                  ),
                ),
                ColorFiltered(
                  colorFilter:
                      const ColorFilter.mode(Colors.green, BlendMode.modulate),
                  child: Image.asset(
                    "assets/logoflutter.png",
                    width: 100,
                    height: 100,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ColorFiltered(
                  colorFilter:
                      const ColorFilter.mode(Colors.green, BlendMode.colorBurn),
                  child: Image.asset(
                    "assets/logoflutter.png",
                    width: 100,
                    height: 100,
                  ),
                ),
                ColorFiltered(
                  colorFilter:
                      const ColorFilter.mode(Colors.green, BlendMode.darken),
                  child: Image.asset(
                    "assets/logoflutter.png",
                    width: 100,
                    height: 100,
                  ),
                ),
                ColorFiltered(
                  colorFilter: const ColorFilter.mode(
                      Colors.green, BlendMode.colorDodge),
                  child: Image.asset(
                    "assets/logoflutter.png",
                    width: 100,
                    height: 100,
                  ),
                ),
                ColorFiltered(
                  colorFilter: const ColorFilter.mode(
                      Colors.green, BlendMode.difference),
                  child: Image.asset(
                    "assets/logoflutter.png",
                    width: 100,
                    height: 100,
                  ),
                ),
              ],
            ),
            ColorFiltered(
              colorFilter:
                  const ColorFilter.mode(Colors.grey, BlendMode.saturation),
              child: Image.asset(
                "assets/logoflutter.png",
                width: 100,
                height: 100,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
