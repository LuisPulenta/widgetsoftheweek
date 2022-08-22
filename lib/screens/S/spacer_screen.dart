import 'package:flutter/material.dart';
import 'package:widgetsoftheweek/screens/S/sized_box_screen.dart';

class SpacerScreen extends StatelessWidget {
  const SpacerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Spacer'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Text("spaceAround"),
            Padding(
              padding: EdgeInsets.all(5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Rectangulo(),
                  Rectangulo(),
                  Rectangulo(),
                ],
              ),
            ),
            Text("spaceBetween"),
            Padding(
              padding: EdgeInsets.all(5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Rectangulo(),
                  Rectangulo(),
                  Rectangulo(),
                ],
              ),
            ),
            Text("spaceEvenly"),
            Padding(
              padding: EdgeInsets.all(5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Rectangulo(),
                  Rectangulo(),
                  Rectangulo(),
                ],
              ),
            ),
            Text("Un Spacer"),
            Padding(
              padding: EdgeInsets.all(5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Rectangulo(),
                  Spacer(),
                  Rectangulo(),
                  Rectangulo(),
                ],
              ),
            ),
            Text("Dos Spacer"),
            Padding(
              padding: EdgeInsets.all(5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Rectangulo(),
                  Spacer(),
                  Rectangulo(),
                  Spacer(),
                  Rectangulo(),
                ],
              ),
            ),
            Text("Dos Spacer con flex"),
            Padding(
              padding: EdgeInsets.all(5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
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
            Text("Tres Spacer con flex"),
            Padding(
              padding: EdgeInsets.all(5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
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
