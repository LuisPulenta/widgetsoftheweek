import 'package:flutter/material.dart';

class SafeAreaScreen extends StatefulWidget {
  const SafeAreaScreen({Key? key}) : super(key: key);

  @override
  State<SafeAreaScreen> createState() => _SafeAreaScreenState();
}

class _SafeAreaScreenState extends State<SafeAreaScreen> {
  bool isSafeArea = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isSafeArea
          ? _Textos(isSafeArea)
          : SafeArea(bottom: false, top: true, child: _Textos(isSafeArea)),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          isSafeArea = !isSafeArea;
          setState(() {});
        },
        backgroundColor: isSafeArea ? Colors.green : Colors.red,
        child: isSafeArea
            ? const Text("ON", style: TextStyle(fontSize: 10))
            : const Text("OFF", style: TextStyle(fontSize: 10)),
      ),
    );
  }
}

//-------------- _Textos ----------------
class _Textos extends StatelessWidget {
  final bool isSafeArea;

  const _Textos(this.isSafeArea);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        isSafeArea
            ? const Text("SafeArea DESACTIVADO",
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 28,
                    fontWeight: FontWeight.bold))
            : const Text("SafeArea ACTIVADO",
                style: TextStyle(
                    color: Colors.green,
                    fontSize: 28,
                    fontWeight: FontWeight.bold)),
        Expanded(
          child: ListView(
            children: List.generate(
                100, (index) => Text("$index-Esta es la línea $index")),
          ),
        ),
      ],
    );
  }
}
