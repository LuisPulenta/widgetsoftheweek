import 'package:flutter/material.dart';
import 'package:widgetsoftheweek/screens/GHI/hero_mode2_screen.dart';

class HeroModeScreen extends StatelessWidget {
  const HeroModeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hero Mode'),
        centerTitle: true,
      ),
      body: Table(
        children: [
          const TableRow(children: [
            Placeholder(
              fallbackHeight: 150,
            ),
            Placeholder(
              fallbackHeight: 150,
            ),
            Placeholder(
              fallbackHeight: 150,
            ),
          ]),
          TableRow(children: [
            const Placeholder(
              fallbackHeight: 150,
            ),
            Container(),
            const Placeholder(
              fallbackHeight: 150,
            ),
          ]),
          TableRow(children: [
            GestureDetector(
              child: const HeroMode(
                enabled: false,
                child: Hero(
                  tag: "Luis",
                  child: FlutterLogo(
                    size: 150,
                  ),
                ),
              ),
              onTap: () => pushRoute(context),
            ),
            const Placeholder(
              fallbackHeight: 150,
            ),
            const Placeholder(
              fallbackHeight: 150,
            ),
          ]),
          TableRow(children: [
            const Placeholder(
              fallbackHeight: 150,
            ),
            const Placeholder(
              fallbackHeight: 150,
            ),
            Container(),
          ]),
        ],
      ),
    );
  }

  //-----------------------------------------------------------------------------
  void pushRoute(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) => const HeroMode2Screen(),
      ),
    );
  }
}
