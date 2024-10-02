import 'package:flutter/material.dart';

class LayoutBuilderScreen extends StatelessWidget {
  const LayoutBuilderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const _MyHome();
  }
}

//------------------------------------------------------------------
class _MyHome extends StatelessWidget {
  const _MyHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LayoutBuilder'),
        centerTitle: true,
      ),
      body: const SafeArea(child: ColumnasContenido()),
    );
  }
}

//------------------------------------------------------------
class ColumnasContenido extends StatelessWidget {
  const ColumnasContenido({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final children = [
      const Expanded(child: Rectangulo()),
      const Expanded(child: Rectangulo()),
    ];

    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return (constraints.maxWidth < 600)
            ? Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: children,
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: children,
              );
      },
    );
  }
}

//------------------------------------------------------------------
class Rectangulo extends StatelessWidget {
  const Rectangulo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      width: double.infinity,
      height: 150,
      decoration: const BoxDecoration(color: Colors.blue),
    );
  }
}
