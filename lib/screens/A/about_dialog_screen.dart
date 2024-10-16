import 'package:flutter/material.dart';

class AboutDialogScreen extends StatelessWidget {
  const AboutDialogScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AboutDialog'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(''),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showAboutDialog(
            context: context,
            applicationVersion: "2.0.1",
            applicationIcon: const Icon(Icons.abc),
            applicationLegalese: "Biri biri biri...",
            children: [
              Container(
                width: 40,
                height: 40,
                color: Colors.red,
              ),
              Container(
                width: 40,
                height: 40,
                color: Colors.green,
              ),
              Container(
                width: 40,
                height: 40,
                color: Colors.blue,
              ),
            ],
          );
        },
        child: const Icon(Icons.info),
      ),
    );
  }
}
