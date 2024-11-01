import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DropDownButtonScreen extends StatefulWidget {
  const DropDownButtonScreen({Key? key}) : super(key: key);

  @override
  State<DropDownButtonScreen> createState() => _DropDownButtonScreenState();
}

class _DropDownButtonScreenState extends State<DropDownButtonScreen> {
  String dropdownValue = '';

//----------------------------------------------------------------
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      appBar: AppBar(
        title: const Text('DropDownButton'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: DropdownButton(
                  style: GoogleFonts.patuaOne(
                    textStyle:
                        const TextStyle(color: Colors.blue, fontSize: 20),
                  ),
                  iconSize: 40,
                  iconEnabledColor: Colors.blue,
                  icon: const Icon(Icons.arrow_drop_down_circle_outlined),
                  isExpanded: true,
                  isDense: true,
                  items: const [
                    DropdownMenuItem(
                      child: Text("Seleccione un equipo"),
                      value: "",
                    ),
                    DropdownMenuItem(
                      child: Text("Talleres"),
                      value: "Talleres",
                    ),
                    DropdownMenuItem(
                      child: Text("Belgrano"),
                      value: "Belgrano",
                    ),
                    DropdownMenuItem(
                      child: Text("Instituto"),
                      value: "Instituto",
                    ),
                  ],
                  value: dropdownValue,
                  onChanged: (value) {
                    dropdownCallback(value as String);
                  },
                ),
              ),
            ),
            Text("El valor seleccionado es: $dropdownValue"),
          ],
        ),
      ),
    );
  }

  //----------------------------------------------------------------
  void dropdownCallback(String? selectedValue) {
    setState(() {
      dropdownValue = selectedValue!;
    });
  }
}
