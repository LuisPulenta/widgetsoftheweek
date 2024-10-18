import 'package:flutter/material.dart';

class FlutterLogoScreen extends StatefulWidget {
  const FlutterLogoScreen({Key? key}) : super(key: key);

  @override
  State<FlutterLogoScreen> createState() => _FlutterLogoScreenState();
}

class _FlutterLogoScreenState extends State<FlutterLogoScreen> {
  bool isBig = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FlutterLogo'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 100,
          ),
          Row(
            children: const [
              FlutterLogo(),
              FlutterLogo(
                size: 50,
              ),
              FlutterLogo(
                size: 100,
                style: FlutterLogoStyle.markOnly,
              ),
              FlutterLogo(
                size: 100,
                style: FlutterLogoStyle.horizontal,
              ),
              FlutterLogo(
                size: 100,
                style: FlutterLogoStyle.stacked,
              ),
            ],
          ),
          const SizedBox(
            height: 100,
          ),
          AnimatedContainer(
            duration: const Duration(milliseconds: 400),
            child: FlutterLogo(
              size: isBig ? 400 : 50,
              style: FlutterLogoStyle.horizontal,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.play_arrow),
          onPressed: () {
            isBig = !isBig;
            setState(() {});
          }),
    );
  }
}
