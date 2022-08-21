import 'package:flutter/material.dart';

class TooltipScreen extends StatelessWidget {
  const TooltipScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TooltipScreen'),
        centerTitle: true,
      ),
      body: const Center(
        child: Tooltip(
          message: "Configuración",
          verticalOffset: 50,
          decoration: BoxDecoration(color: Colors.amber),
          height: 60,
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
