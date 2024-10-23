import 'package:flutter/material.dart';

class ListTileScreen extends StatelessWidget {
  final options = const [
    'Talleres',
    'Belgrano',
    'River Plate',
    'Boca Juniors',
    'Independiente',
    'Racing'
  ];

  const ListTileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ListTile'),
          centerTitle: true,
        ),
        body: ListView.separated(
          itemCount: options.length,
          itemBuilder: (context, index) => ListTile(
            selected: options[index] == "Talleres",
            enabled: options[index] != "Belgrano",
            title: Text(options[index]),
            subtitle: const Text("Club de fútbol"),
            isThreeLine: false,
            leading: const Icon(
              Icons.home,
              color: Colors.indigo,
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios_outlined,
              color: Colors.indigo,
            ),
            dense: true,
            onTap: () {
              //print(options[index]);
            },
          ),
          separatorBuilder: (_, __) => const Divider(),
        ));
  }
}
