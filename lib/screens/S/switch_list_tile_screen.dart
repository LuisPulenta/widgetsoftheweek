import 'package:flutter/material.dart';

class SwitchListTileScreen extends StatefulWidget {
  const SwitchListTileScreen({Key? key}) : super(key: key);

  @override
  State<SwitchListTileScreen> createState() => _SwitchListTileScreenState();
}

class _SwitchListTileScreenState extends State<SwitchListTileScreen> {
  bool valor1 = false;
  bool valor2 = false;
  bool valor3 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SwitchListTile'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SwitchListTile(
                title: const Text("Valor 1"),
                subtitle: const Text("Descripción 1"),
                dense: true,
                value: valor1,
                onChanged: (value) {
                  valor1 = value;
                  setState(() {});
                }),
            SwitchListTile(
                controlAffinity: ListTileControlAffinity.leading,
                inactiveThumbImage: const NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSlOWkY-w8q_ZCKthY9Aw9oz51vVcg1IrRb3w&s"),
                activeThumbImage: const NetworkImage(
                    "https://i.pinimg.com/736x/bf/70/69/bf7069b3dc46a61d741d7832057eccd2.jpg"),
                title: const Text("Valor 2"),
                subtitle: const Text("Descripción 2"),
                value: valor2,
                onChanged: (value) {
                  valor2 = value;
                  setState(() {});
                }),
            SwitchListTile(
                controlAffinity: ListTileControlAffinity.leading,
                title: const Text("Valor 3"),
                value: valor3,
                onChanged: (value) {
                  valor3 = value;
                  setState(() {});
                }),
          ],
        ),
      ),
    );
  }
}
