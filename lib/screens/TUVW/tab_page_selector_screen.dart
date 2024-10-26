import 'package:flutter/material.dart';

class TabPageSelectorScreen extends StatefulWidget {
  const TabPageSelectorScreen({Key? key}) : super(key: key);

  @override
  State<TabPageSelectorScreen> createState() => _TabPageSelectorScreenState();
}

class _TabPageSelectorScreenState extends State<TabPageSelectorScreen>
    with SingleTickerProviderStateMixin {
//-----------------------------------------------------------------
  late final TabController controller;
  int _index = 0;

  List<Widget> widgets = const [
    Icon(Icons.home),
    Icon(Icons.settings),
    Icon(Icons.person),
  ];

//-----------------------------------------------------------------
  @override
  void initState() {
    super.initState();

    controller = TabController(
        length: widgets.length, initialIndex: _index, vsync: this);
  }

//-----------------------------------------------------------------
  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

//-----------------------------------------------------------------
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TabPageSelector'),
        centerTitle: true,
      ),
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          TabBarView(controller: controller, children: widgets),

          //Used Positioned widget to position TabPageSelector at the bottom of screen.
          Positioned(
            bottom: 40,
            child: TabPageSelector(
              color: Colors.black38,
              controller: controller,
            ),
          ),
        ],
      ),
      floatingActionButton: ButtonBar(
        children: [
          FloatingActionButton.small(
            onPressed: () {
              (_index != widgets.length - 1) ? _index++ : _index = 0;
              controller.animateTo(_index);
            },
            child: Icon(Icons.navigate_next),
            hoverElevation: 0,
            elevation: 0,
          )
        ],
      ),
    );
  }
}
