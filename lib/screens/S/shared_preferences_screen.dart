import 'package:flutter/material.dart';
import 'package:widgetsoftheweek/share_preferences/preferences.dart';

class SharedPreferencesScreen extends StatefulWidget {
  const SharedPreferencesScreen({Key? key}) : super(key: key);

  @override
  State<SharedPreferencesScreen> createState() =>
      _SharedPreferencesScreenState();
}

class _SharedPreferencesScreenState extends State<SharedPreferencesScreen> {
  late bool? isDarkMode;

  @override
  void initState() {
    super.initState();
    isDarkMode = Preferences.isDarkmode;
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: (isDarkMode == null || isDarkMode == false)
          ? Colors.amber
          : Colors.black,
      appBar: AppBar(
        title: const Text('SharedPreferences'),
        centerTitle: true,
      ),
      body: Center(
        child: (isDarkMode == null || isDarkMode == false)
            ? Text('Modo Claro',
                style: TextStyle(
                    color: (isDarkMode == null || isDarkMode == false)
                        ? Colors.black
                        : Colors.amber,
                    fontSize: 28,
                    fontWeight: FontWeight.bold))
            : Text('Modo Oscuro',
                style: TextStyle(
                    color: (isDarkMode == null || isDarkMode == false)
                        ? Colors.black
                        : Colors.amber,
                    fontSize: 28,
                    fontWeight: FontWeight.bold)),
      ),
      floatingActionButton: FloatingActionButton(
          child: (isDarkMode == null || isDarkMode == false)
              ? const Icon(Icons.toggle_off)
              : const Icon(Icons.toggle_on),
          onPressed: () {
            if (isDarkMode != null) {
              isDarkMode = !isDarkMode!;
              Preferences.isDarkmode = isDarkMode!;
              setState(() {});
            }
          }),
    );
  }
}
