import 'package:flutter/material.dart';

class CircularLinearProgressIndicatorScreen extends StatelessWidget {
  const CircularLinearProgressIndicatorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const FittedBox(
            child: Text('Circular & Linear Progress Indicator')),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            CircularProgressIndicator(
              color: Colors.purple,
              //valueColor: AlwaysStoppedAnimation(Colors.red),
              backgroundColor: Colors.grey,
              strokeWidth: 5,
              //value: 0.2,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 50),
              child: LinearProgressIndicator(
                valueColor: AlwaysStoppedAnimation(Colors.red),
                backgroundColor: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
