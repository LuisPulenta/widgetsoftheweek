import 'dart:math';

import 'package:flutter/material.dart';

class SliverAppScreen extends StatelessWidget {
  const SliverAppScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _MyHomeScreen();
  }
}

//----------------------------------------------------------------------------
class _MyHomeScreen extends StatelessWidget {
  _MyHomeScreen({
    Key? key,
  }) : super(key: key);

  final rnd = Random();

  final List<Color> colores = [
    Colors.blue,
    Colors.red,
    Colors.yellow,
    Colors.green,
    Colors.orange,
    Colors.brown,
    Colors.purple,
    Colors.cyan,
    Colors.pink,
    Colors.white,
    Colors.grey,
    Colors.black,
    Colors.amber,
    Colors.indigo,
    Colors.redAccent,
  ];

  @override
  Widget build(BuildContext context) {
    final List<Widget> items = List.generate(
        100,
        (i) => Container(
              width: double.infinity,
              height: 150,
              color: colores[rnd.nextInt(colores.length)],
            ));

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            pinned: false,
            title: const Text("SliverAppBar"),
            expandedHeight: 200,
            flexibleSpace: Image.network(
              "https://www.globalnationalparks.com/es/wp-content/uploads/iguazu-parque-nacional-brasil.jpg",
              fit: BoxFit.cover,
            ),
            centerTitle: true,
          ),
          SliverList(
            delegate: SliverChildListDelegate(items),
          ),
        ],
      ),
    );
  }
}
