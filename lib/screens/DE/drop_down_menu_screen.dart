import 'package:flutter/material.dart';

class DropDownMenuScreen extends StatefulWidget {
  const DropDownMenuScreen({Key? key}) : super(key: key);

  @override
  State<DropDownMenuScreen> createState() => _DropDownMenuScreenState();
}

class _DropDownMenuScreenState extends State<DropDownMenuScreen> {
  Color backColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backColor,
      appBar: AppBar(
        title: const Text('DropDownMenu'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          color: Colors.white,
          child: ClipRRect(
            child: DropdownMenu(
                menuHeight: 550,
                menuStyle: MenuStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(255, 255, 255, 255)),
                ),
                enableSearch: false,
                enableFilter: false,
                width: 300,
                //label: const Text("Seleccione el color"),
                hintText: "Color...",
                dropdownMenuEntries: const [
                  DropdownMenuEntry(value: Colors.red, label: 'Rojo'),
                  DropdownMenuEntry(value: Colors.blue, label: 'Azul'),
                  DropdownMenuEntry(value: Colors.yellow, label: 'Amarillo'),
                  DropdownMenuEntry(value: Colors.green, label: 'Verde'),
                  DropdownMenuEntry(value: Colors.orange, label: 'Naranja'),
                  DropdownMenuEntry(value: Colors.purple, label: 'Violeta'),
                  DropdownMenuEntry(value: Colors.brown, label: 'Marrón'),
                  DropdownMenuEntry(value: Colors.cyan, label: 'Celeste'),
                ],
                onSelected: (color) {
                  if (color != null) {
                    backColor = color as Color;
                  }
                  setState(() {});
                }),
          ),
        ),
      ),
    );
  }
}
