import 'package:flutter/material.dart';

class FloatingActionButtonScreen extends StatelessWidget {
  const FloatingActionButtonScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FloatingActionButton'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('Ejemplo de FAB en un bottomNavigationBar'),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        splashColor: Colors.purple,
        hoverColor: Colors.orange,
        elevation: 0,
        highlightElevation: 0,
        onPressed: () {},
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Inicio"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Usuario"),
        ],
        backgroundColor: Colors.cyan,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
