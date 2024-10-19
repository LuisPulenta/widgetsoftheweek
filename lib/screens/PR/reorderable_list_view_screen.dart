import 'package:flutter/material.dart';

class ReorderableListViewScreen extends StatefulWidget {
  const ReorderableListViewScreen({Key? key}) : super(key: key);

  @override
  State<ReorderableListViewScreen> createState() =>
      _ReorderableListViewScreenState();
}

class _ReorderableListViewScreenState extends State<ReorderableListViewScreen> {
  final List<String> _list = List.generate(22, (i) => "$i");

  final options = const [
    'Talleres',
    'Belgrano',
    'River Plate',
    'Boca Juniors',
    'Independiente',
    'Racing',
    'San Lorenzo',
    'Huracán',
    'Estudiantes',
    'Gimnasia',
    'Instituto',
    'Newells',
    'Rosario Central',
    'Unión',
    'Central Córdoba',
    'Godoy Cruz',
    'Independiente Rivadavia',
    'Argentinos Juniors',
    'Vélez Sarsfield',
    'Defensa y Justicia',
    'Barracas Central',
    'Deportivo Riestra',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ReorderableListView"),
        centerTitle: true,
      ),
      body: ReorderableListView(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        children: _list
            .map((String string) => ListTile(
                leading: const Icon(Icons.shield_outlined),
                key: Key(_list[_list.indexOf(string)]),
                title: Text(options[int.parse(string)])))
            .toList(),
        onReorder: (oldIndex, newIndex) {
          String old = _list[oldIndex];
          if (oldIndex > newIndex) {
            for (int i = oldIndex; i > newIndex; i--) {
              _list[i] = _list[i - 1];
            }
            _list[newIndex] = old;
          } else {
            for (int i = oldIndex; i < newIndex - 1; i++) {
              _list[i] = _list[i + 1];
            }
            _list[newIndex - 1] = old;
          }
          setState(() {});
        },
      ),
    );
  }
}
