import 'package:flutter/material.dart';

class ImageScreen extends StatelessWidget {
  const ImageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            const Text("Image.asset",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 28,
                    fontWeight: FontWeight.bold)),
            Image.asset(
              "assets/hp.jpg",
              width: 300,
              height: 150,
              fit: BoxFit.contain,
            ),
            const Text("Image.network",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 28,
                    fontWeight: FontWeight.bold)),
            Image.network(
              "https://i.pinimg.com/originals/fc/7c/13/fc7c130922b1f0f1142941cb6a0176bc.jpg",
              width: 300,
              height: 200,
              fit: BoxFit.cover,
            ),
            Image.network(
              "https://i.pinimg.com/originals/fc/7c/13/fc7c130922b1f0f1142941cb6a0176bc.jpg",
              width: 300,
              height: 200,
              fit: BoxFit.fill,
              color: Colors.red,
              colorBlendMode: BlendMode.lighten,
              loadingBuilder: (context, child, progress) {
                return progress == null
                    ? child
                    : const LinearProgressIndicator();
              },
            ),
            const Text("Image.file - Image.memory",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 28,
                    fontWeight: FontWeight.bold)),
            // Image.file('/path/to/dash.jpg'),
            // Image.memory(myUint8List),
          ],
        ),
      ),
    );
  }
}
