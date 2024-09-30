import 'package:flutter/material.dart';

class TableScreen extends StatelessWidget {
  const TableScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Table'),
        centerTitle: true,
      ),
      body: Center(
        child: Table(
          defaultVerticalAlignment: TableCellVerticalAlignment.top,
          //defaultColumnWidth: const FixedColumnWidth(100),
          columnWidths: const {
            0: FractionColumnWidth(0.5),
            1: FractionColumnWidth(0.2),
            2: FractionColumnWidth(0.3),
          },
          border: TableBorder.all(),
          children: const [
            TableRow(children: [
              RectanguloLarge(),
              RectanguloMedium(),
              RectanguloSmall()
            ]),
            TableRow(children: [
              RectanguloMedium(),
              RectanguloLarge(),
              RectanguloSmall()
            ]),
            TableRow(children: [
              RectanguloSmall(),
              RectanguloLarge(),
              RectanguloMedium(),
            ])
          ],
        ),
      ),
    );
  }
}

class RectanguloLarge extends StatelessWidget {
  const RectanguloLarge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 200,
      margin: const EdgeInsets.all(5),
      decoration: const BoxDecoration(color: Colors.blue),
    );
  }
}

class RectanguloMedium extends StatelessWidget {
  const RectanguloMedium({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 150,
      margin: const EdgeInsets.all(5),
      decoration: const BoxDecoration(color: Colors.teal),
    );
  }
}

class RectanguloSmall extends StatelessWidget {
  const RectanguloSmall({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 100,
      margin: const EdgeInsets.all(5),
      decoration: const BoxDecoration(color: Colors.yellow),
    );
  }
}
