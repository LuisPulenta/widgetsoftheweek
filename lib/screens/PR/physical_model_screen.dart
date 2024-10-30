import 'package:flutter/material.dart';

class PhysicalModelScreen extends StatelessWidget {
  const PhysicalModelScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PhysicalModel'),
        centerTitle: true,
      ),
      body: Center(
        child: PhysicalModel(
          color: Colors.black,
          shadowColor: Colors.green,
          elevation: 30,
          borderRadius: BorderRadius.circular(20),
          shape: BoxShape.circle,
          child: Container(
            width: 200,
            height: 200,
            color: Colors.blue.withOpacity(0.4),
          ),
        ),
      ),
    );
  }
}
