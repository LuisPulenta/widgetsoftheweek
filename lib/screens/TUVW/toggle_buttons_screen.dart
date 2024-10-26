import 'package:flutter/material.dart';

class ToggleButtonsScreen extends StatefulWidget {
  const ToggleButtonsScreen({Key? key}) : super(key: key);

  @override
  State<ToggleButtonsScreen> createState() => _ToggleButtonsScreenState();
}

class _ToggleButtonsScreenState extends State<ToggleButtonsScreen> {
  //-----------------------------------------------------
  int _selectedIndex = 0;
  final List<String> _options = ['One', 'Two', 'Three', 'Four'];
  List<bool> _isSelected = [false, false, false, false];
  List<String> _items = ['Orange', 'Apple', 'Banana', 'Mango'];
  List<bool> _isSelected2 = [true, false, false];
  List<bool> selections = [];

  //-----------------------------------------------------
  @override
  void initState() {
    super.initState();
    selections = List.generate(3, (_) => false);
  }

  //-----------------------------------------------------
  void _sortItems(int index) {
    setState(() {
      for (int buttonIndex = 0;
          buttonIndex < _isSelected2.length;
          buttonIndex++) {
        if (buttonIndex == index) {
          _isSelected2[buttonIndex] = true;
        } else {
          _isSelected2[buttonIndex] = false;
        }
      }

      if (index == 0) {
        _items.sort((a, b) => a.compareTo(b)); // Alphabetical A-Z
      } else if (index == 1) {
        _items.sort((a, b) => b.compareTo(a)); // Reverse Alphabetical Z-A
      } else if (index == 2) {
        _items.shuffle(); // Random order
      }
    });
  }

//-----------------------------------------------------
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SegmentedButton'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //-----------------------------------------------------
            const Text("Selección simple de un valor",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),
            ToggleButtons(
              borderColor: Colors.deepPurple,
              selectedBorderColor: Colors.deepPurpleAccent,
              borderWidth: 2,
              selectedColor: Colors.white,
              color: Colors.deepPurple,
              fillColor: Colors.deepPurple.shade100,
              borderRadius: BorderRadius.circular(20),
              children: _options
                  .map((String label) => Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 8),
                        child: Text(label),
                      ))
                  .toList(),
              onPressed: (int index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              isSelected: List.generate(
                  _options.length, (index) => index == _selectedIndex),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text('Selected: ${_options[_selectedIndex]}'),
            ),
            const Divider(),
            //-----------------------------------------------------
            const Text("Selección múltiple",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),
            ToggleButtons(
              borderColor: Colors.deepPurple,
              selectedBorderColor: Colors.deepPurpleAccent,
              borderWidth: 2,
              selectedColor: Colors.white,
              color: Colors.deepPurple,
              fillColor: Colors.deepPurple.shade100,
              borderRadius: BorderRadius.circular(20),
              children: _options
                  .map((String label) => Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 8),
                        child: Text(label),
                      ))
                  .toList(),
              onPressed: (int index) {
                setState(() {
                  _isSelected[index] = !_isSelected[index];
                });
              },
              isSelected: _isSelected,
            ),
            const SizedBox(height: 20),
            Text(
                'Selected: ' +
                    _isSelected
                        .asMap()
                        .entries
                        .where((entry) => entry.value)
                        .map((entry) => _options[entry.key])
                        .join(', '),
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurple)),
            const Divider(),
            //-----------------------------------------------------
            const Text("Ordenando elementos",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),
            ToggleButtons(
              borderColor: Colors.blue,
              selectedBorderColor: Colors.blueAccent,
              borderWidth: 2,
              selectedColor: Colors.white,
              color: Colors.blue,
              fillColor: Colors.lightBlue.shade100,
              borderRadius: BorderRadius.circular(10),
              children: const <Widget>[
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Text('A-Z')),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Text('Z-A')),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Text('Random')),
              ],
              onPressed: (int index) {
                _sortItems(index);
              },
              isSelected: _isSelected2,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: _items.length,
                itemBuilder: (context, index) => ListTile(
                  title: Text(_items[index]),
                ),
              ),
            ),
            const Divider(),

            //-----------------------------------------------------
            const Text("Iconos",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),

            ToggleButtons(
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
            )
          ],
        ),
      ),
    );
  }
}
