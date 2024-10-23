import 'package:flutter/material.dart';
import 'package:widgetsoftheweek/models/miscolores.dart';

class InheritedWidgetScreen extends StatelessWidget {
  const InheritedWidgetScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const _MyHomeScreen();
  }
}

//---------------------------------------------------------------
class _MyHomeScreen extends StatefulWidget {
  const _MyHomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<_MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<_MyHomeScreen> {
  Color color1 = Colors.yellow;
  Color color2 = Colors.green;

  @override
  Widget build(BuildContext context) {
    return MisColoresW(
      color1: color1,
      color2: color2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('InheritedWidget'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _Rectangulo1(),
              _Rectangulo2(),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            color1 = Colors.pink;
            color2 = Colors.amber;

            setState(() {});
          },
          child: const Icon(Icons.color_lens),
        ),
      ),
    );
  }
}

//---------------------------------------------------------------
class _Rectangulo1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final misColoresW =
        context.dependOnInheritedWidgetOfExactType<MisColoresW>();
    return Container(
      width: 70,
      height: 70,
      decoration: BoxDecoration(color: misColoresW!.color1),
    );
  }
}

//---------------------------------------------------------------
class _Rectangulo2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final misColoresW =
        context.dependOnInheritedWidgetOfExactType<MisColoresW>();
    return Container(
      width: 70,
      height: 70,
      decoration: BoxDecoration(color: misColoresW!.color2),
    );
  }
}
