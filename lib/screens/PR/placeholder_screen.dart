import 'package:flutter/material.dart';

class PlaceholderScreen extends StatelessWidget {
  const PlaceholderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Placeholder'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Placeholder(
                    fallbackWidth: 50,
                    fallbackHeight: 50,
                  ),
                  Placeholder(
                    fallbackWidth: 60,
                    fallbackHeight: 50,
                  ),
                  Placeholder(
                    fallbackWidth: 70,
                    fallbackHeight: 50,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Placeholder(
                fallbackHeight: 150,
              ),
              const SizedBox(
                height: 10,
              ),
              const Placeholder(
                fallbackHeight: 250,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
