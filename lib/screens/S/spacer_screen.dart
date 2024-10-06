import 'package:flutter/material.dart';
import 'package:widgetsoftheweek/screens/S/sized_box_screen.dart';

class SpacerScreen extends StatelessWidget {
  const SpacerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Spacer'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            const Text("spaceAround"),
            Padding(
              padding: const EdgeInsets.all(5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Rectangulo(),
                  Rectangulo(),
                  Rectangulo(),
                ],
              ),
            ),
            const Text("spaceBetween"),
            Padding(
              padding: const EdgeInsets.all(5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Rectangulo(),
                  Rectangulo(),
                  Rectangulo(),
                ],
              ),
            ),
            const Text("spaceEvenly"),
            Padding(
              padding: const EdgeInsets.all(5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Rectangulo(),
                  Rectangulo(),
                  Rectangulo(),
                ],
              ),
            ),
            const Text("Un Spacer"),
            Padding(
              padding: const EdgeInsets.all(5),
              child: Row(
                children: const [
                  Rectangulo(),
                  Spacer(),
                  Rectangulo(),
                  Rectangulo(),
                ],
              ),
            ),
            const Text("Dos Spacer"),
            Padding(
              padding: const EdgeInsets.all(5),
              child: Row(
                children: const [
                  Rectangulo(),
                  Spacer(),
                  Rectangulo(),
                  Spacer(),
                  Rectangulo(),
                ],
              ),
            ),
            const Text("Dos Spacer con flex"),
            Padding(
              padding: const EdgeInsets.all(5),
              child: Row(
                children: const [
                  Rectangulo(),
                  Spacer(
                    flex: 1,
                  ),
                  Rectangulo(),
                  Spacer(flex: 2),
                  Rectangulo(),
                ],
              ),
            ),
            const Text("Tres Spacer con flex"),
            Padding(
              padding: const EdgeInsets.all(5),
              child: Row(
                children: const [
                  Rectangulo(),
                  Spacer(
                    flex: 1,
                  ),
                  Rectangulo(),
                  Spacer(flex: 3),
                  Rectangulo(),
                  Spacer(flex: 9),
                  Rectangulo(),
                ],
              ),
            ),
          ],
        ));
  }
}
