import 'package:flutter/material.dart';

class IgnorePointerScreen extends StatefulWidget {
  const IgnorePointerScreen({Key? key}) : super(key: key);

  @override
  State<IgnorePointerScreen> createState() => _IgnorePointerScreenState();
}

class _IgnorePointerScreenState extends State<IgnorePointerScreen> {
  String text = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('IgnorePointer'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              text,
              style: const TextStyle(
                  color: Colors.blue,
                  fontSize: 28,
                  fontWeight: FontWeight.bold),
            ),
            const Text("Este botón si funciona"),
            ElevatedButton(
              onPressed: () {
                text = "Viva Talleres!!";
                setState(() {});
              },
              child: const Text("Viva Talleres!!"),
            ),
            const Text(
                "Este botón tiene el IgnorePointer entonces no funciona"),
            IgnorePointer(
              ignoring: true,
              child: ElevatedButton(
                onPressed: () {
                  text = "Abajo Talleres!!";
                  setState(() {});
                },
                child: const Text("Abajo Talleres!!"),
              ),
            ),
            const Text(
                "Este botón también tiene el IgnorePointer entonces no funciona"),
            IgnorePointer(
              ignoring: true,
              child: ElevatedButton(
                onPressed: () {
                  text = "Viva Belgrano!!";
                  setState(() {});
                },
                child: const Text("Viva Belgrano!!"),
              ),
            ),
            const Text("Este botón si funciona"),
            ElevatedButton(
              onPressed: () {
                text = "Belgrano muerto!!";
                setState(() {});
              },
              child: const Text("Belgrano muerto!!"),
            ),
          ],
        ),
      ),
    );
  }
}
