import 'package:flutter/material.dart';

class DividerScreen extends StatelessWidget {
  const DividerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> equipos = ['Talleres', 'Belgrano', 'Instituto'];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Divider'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            const _Rectangulo(
              color: Colors.blue,
            ),
            const Divider(
              color: Colors.purple,
              height: 10,
              thickness: 10,
              indent: 10,
              endIndent: 10,
            ),
            const _Rectangulo(
              color: Colors.red,
            ),
            const Divider(
              color: Colors.black,
              height: 5,
              thickness: 5,
              indent: 30,
              endIndent: 30,
            ),
            const _Rectangulo(
              color: Colors.yellow,
            ),
            const Divider(
              color: Colors.blue,
              height: 1,
              thickness: 1,
              indent: 60,
              endIndent: 60,
            ),
            const _Rectangulo(
              color: Colors.green,
            ),
            Expanded(
              child: ListView.separated(
                itemCount: equipos.length,
                itemBuilder: (context, index) => ListTile(
                  title: Text(equipos[index]),
                  leading: const Icon(
                    Icons.home,
                    color: Colors.indigo,
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Colors.indigo,
                  ),
                  onTap: () {},
                ),
                separatorBuilder: (_, __) => const Divider(
                  height: 10,
                  thickness: 3,
                  color: Colors.lightBlueAccent,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

//------------------------------------------------------
class _Rectangulo extends StatelessWidget {
  final Color color;

  const _Rectangulo({required this.color});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 250,
        height: 50,
        decoration: BoxDecoration(
          color: color,
        ),
      ),
    );
  }
}
