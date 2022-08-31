import 'package:flutter/material.dart';

class ClipRRectScreen extends StatelessWidget {
  const ClipRRectScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ClipRRect'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                width: 150,
                height: 150,
                color: Colors.orange,
                child: const Center(
                  child: Text('Radio 10'),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Container(
                width: 150,
                height: 150,
                color: Colors.pink,
                child: const Center(
                  child: Text('Radio 30'),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Container(
                width: 150,
                height: 150,
                color: Colors.purpleAccent,
                child: const Center(
                  child: Text('Radio 50'),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
