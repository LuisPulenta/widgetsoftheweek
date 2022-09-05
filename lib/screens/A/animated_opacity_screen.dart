import 'package:flutter/material.dart';

class AnimatedOpacityScreen extends StatefulWidget {
  const AnimatedOpacityScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedOpacityScreen> createState() => _AnimatedOpacityScreenState();
}

class _AnimatedOpacityScreenState extends State<AnimatedOpacityScreen> {
  double _currentOpacity = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedOpacity'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                  width: double.infinity, height: 100, color: Colors.blue),
              const SizedBox(
                height: 10,
              ),
              AnimatedOpacity(
                  opacity: _currentOpacity,
                  duration: const Duration(seconds: 2),
                  curve: Curves.easeInOut,
                  child: Container(
                      width: double.infinity, height: 100, color: Colors.red)),
              const SizedBox(
                height: 10,
              ),
              Container(
                  width: double.infinity, height: 100, color: Colors.green),
              const SizedBox(
                height: 10,
              ),
              AnimatedOpacity(
                  opacity: 1.2 - _currentOpacity,
                  duration: const Duration(seconds: 2),
                  curve: Curves.easeInOut,
                  child: Container(
                      width: double.infinity,
                      height: 100,
                      color: Colors.orange)),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.play_arrow),
        onPressed: () {
          setState(() {
            _currentOpacity = 0.2;
          });
        },
      ),
    );
  }
}
