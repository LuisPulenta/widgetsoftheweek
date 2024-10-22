import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FontAwesomeFlutterScreen extends StatelessWidget {
  const FontAwesomeFlutterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FontAwesomeFlutter'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const Text('Iconos de Material'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Icon(
                  Icons.home,
                  color: Colors.blue,
                ),
                Icon(
                  Icons.add,
                  color: Colors.red,
                  size: 40,
                ),
                Icon(
                  Icons.settings,
                  color: Colors.green,
                  size: 60,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Text('Iconos de FontAwesome'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                FaIcon(
                  FontAwesomeIcons.house,
                  color: Colors.blue,
                ),
                FaIcon(
                  FontAwesomeIcons.plus,
                  color: Colors.red,
                  size: 40,
                ),
                FaIcon(
                  FontAwesomeIcons.gear,
                  color: Colors.green,
                  size: 60,
                ),
                FaIcon(
                  FontAwesomeIcons.google,
                  color: Colors.purple,
                  size: 80,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
