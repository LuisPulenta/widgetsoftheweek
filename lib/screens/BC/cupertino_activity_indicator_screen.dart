import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoActivityIndicatorScreen extends StatelessWidget {
  const CupertinoActivityIndicatorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CupertinoActivityIndicator'),
        centerTitle: true,
      ),
      body: const Center(
        child: CupertinoActivityIndicator(
          radius: 50,
          color: Colors.red,
          animating: true,
        ),
      ),
    );
  }
}
