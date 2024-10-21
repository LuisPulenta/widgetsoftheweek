import 'package:flutter/material.dart';

class ScrollBarScreen extends StatelessWidget {
  const ScrollBarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ScrollBar'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Scrollbar(
          thumbVisibility: true,
          trackVisibility: true,
          thickness: 30,
          interactive: true,
          radius: const Radius.circular(15),
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: const [
              _ListItem(
                color: Colors.blue,
              ),
              _ListItem(
                color: Colors.red,
              ),
              _ListItem(
                color: Colors.yellow,
              ),
              _ListItem(
                color: Colors.green,
              ),
              _ListItem(
                color: Colors.orange,
              ),
              _ListItem(
                color: Colors.purple,
              ),
              _ListItem(
                color: Colors.brown,
              ),
              _ListItem(
                color: Colors.purple,
              ),
              _ListItem(
                color: Colors.deepOrange,
              ),
              _ListItem(
                color: Colors.cyan,
              ),
              _ListItem(
                color: Colors.amber,
              ),
              _ListItem(
                color: Colors.blueGrey,
              ),
              _ListItem(
                color: Colors.redAccent,
              ),
              _ListItem(
                color: Colors.yellowAccent,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//-------------------------------------------------------
class _ListItem extends StatelessWidget {
  final Color color;
  const _ListItem({
    super.key,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Container(
          width: double.infinity,
          height: 150,
          color: color,
        ),
      ),
    );
  }
}
