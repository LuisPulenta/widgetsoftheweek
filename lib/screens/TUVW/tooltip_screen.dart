import 'package:flutter/material.dart';

class TooltipScreen extends StatelessWidget {
  const TooltipScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tooltip'),
        centerTitle: true,
      ),
      body: const Center(
        child: Tooltip(
          message: "Configuración",
          preferBelow: true,
          verticalOffset: -120,
          decoration: BoxDecoration(color: Colors.cyan),
          height: 40,
          child: Icon(
            Icons.settings,
            size: 100,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
