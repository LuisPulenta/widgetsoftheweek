import 'package:flutter/material.dart';

class FractionallySizedBoxScreen extends StatelessWidget {
  const FractionallySizedBoxScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FractionallySizedBox'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text("Botón sin FractionallySizedBox"),
            ElevatedButton(onPressed: () {}, child: const Text('CLIC!!')),
            const Text("Botón con FractionallySizedBox"),
            FractionallySizedBox(
                widthFactor: 0.7,
                child: ElevatedButton(
                    onPressed: () {}, child: const Text('CLIC!!'))),
            const Text(
                "Botón con FractionallySizedBox y alineado a la izquierda"),
            Container(
              alignment: Alignment.centerLeft,
              child: FractionallySizedBox(
                  widthFactor: 0.7,
                  child: ElevatedButton(
                      onPressed: () {}, child: const Text('CLIC!!'))),
            ),
            const Text("Espacio en blanco de 0,1"),
          ],
        ),
      ),
    );
  }
}
