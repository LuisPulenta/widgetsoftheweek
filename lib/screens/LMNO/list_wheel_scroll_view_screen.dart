import 'package:flutter/material.dart';

class ListWheelScrollViewScreen extends StatelessWidget {
  const ListWheelScrollViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListWheelScrollView'),
        centerTitle: true,
      ),
      body: ListWheelScrollView(
        itemExtent: 142,
        diameterRatio: 1.5,
        offAxisFraction: -0.5,
        useMagnifier: false,
        magnification: 1,
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
    );
  }
}

//-------------------------------------------------------
class _ListItem extends StatelessWidget {
  final Color color;
  const _ListItem({
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Container(
          width: 200,
          height: 300,
          color: color,
        ),
      ),
    );
  }
}
