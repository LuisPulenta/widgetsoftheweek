import 'package:flutter/material.dart';

class ScaffoldMessengerScreen extends StatelessWidget {
  const ScaffoldMessengerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ScaffoldMessenger'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              child: const Text("Snackbar y me quedo en la pantalla"),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text("Mensaje del Snackbar y sigo en esta pantalla"),
                ));
              },
            ),
            ElevatedButton(
              child: const Text("Snackbar y cierro la pantalla"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content:
                      Text("Mensaje del Snackbar y voy a la pantalla anterior"),
                ));
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      ),
    );
  }
}
