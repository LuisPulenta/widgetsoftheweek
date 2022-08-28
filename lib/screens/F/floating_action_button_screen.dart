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
        onPressed: () {},
      ),
      bottomNavigationBar: BottomAppBar(
          color: Colors.cyan,
          shape: const CircularNotchedRectangle(),
          child: Container(
            height: 50,
          )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
