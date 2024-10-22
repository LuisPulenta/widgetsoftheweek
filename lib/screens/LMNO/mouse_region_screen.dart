import 'package:flutter/material.dart';

class MouseRegionScreen extends StatelessWidget {
  const MouseRegionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MouseRegion'),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          color: Colors.amber,
          child: MouseRegion(
            cursor: SystemMouseCursors.forbidden,
            onEnter: (event) => {},
            onHover: (event) => {},
            onExit: (event) => {},
            child: const Icon(
              Icons.home,
              size: 150,
              color: Colors.blue,
            ),
          ),
        ),
      ),
    );
  }
}
