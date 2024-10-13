import 'package:flutter/material.dart';

class ToggleButtonsScreen extends StatefulWidget {
  const ToggleButtonsScreen({Key? key}) : super(key: key);

  @override
  State<ToggleButtonsScreen> createState() => _ToggleButtonsScreenState();
}

class _ToggleButtonsScreenState extends State<ToggleButtonsScreen> {
  List<bool> selections = [];

  @override
  void initState() {
    super.initState();
    selections = List.generate(3, (_) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ToggleButtons'),
        centerTitle: true,
      ),
      body: Center(
        child: ToggleButtons(
          onPressed: (int index) {
            selections[index] = !selections[index];
            setState(() {});
          },
          //onPressed: null,
          //Colores
          color: Colors.grey,
          selectedColor: Colors.white,
          fillColor: Colors.amber,
          renderBorder: true,
          //-----------
          disabledBorderColor: Colors.black12,
          disabledColor: Colors.black38,

          //Borde
          borderRadius: BorderRadius.circular(10),
          borderWidth: 5,
          borderColor: Colors.black,
          selectedBorderColor: Colors.amberAccent,

          //Otros
          splashColor: Colors.brown,
          highlightColor: Colors.red,
          focusColor: Colors.lime,

          children: const [
            Icon(Icons.local_cafe),
            Icon(Icons.fastfood),
            Icon(Icons.cake),
          ],
          isSelected: selections,
        ),
      ),
    );
  }
}
