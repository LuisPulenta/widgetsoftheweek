import 'package:flutter/material.dart';
import 'package:widgetsoftheweek/screens/BC/container_screen.dart';
import 'package:widgetsoftheweek/screens/F/fitted_box_screen.dart';
import 'package:widgetsoftheweek/screens/F/floating_action_button_screen.dart';

class PageviewScreen extends StatelessWidget {
  PageviewScreen({Key? key}) : super(key: key);
  final controller = PageController(initialPage: 1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('PageView'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 5,
            ),
            const Text("Como ejemplo hay 3 páginas:"),
            const Text("Container, FloatingActionButton y FittedBox"),
            const Text("y empieza posicionado en la del medio"),
            Expanded(
              child: PageView(
                controller: controller,
                children: const [
                  ContainerScreen(),
                  FloatingActionButtonScreen(),
                  FittedBoxScreen(),
                ],
              ),
            ),
          ],
        ));
  }
}
