import 'package:flutter/material.dart';

class SnackbarScreen extends StatelessWidget {
  SnackbarScreen({Key? key}) : super(key: key);

  final _scaffKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffKey,
        appBar: AppBar(
          title: const Text("SnackBar"),
          centerTitle: true,
        ),
        body: Builder(
          builder: (BuildContext context) {
            return Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    child: const Text("Exito!!"),
                    onPressed: () =>
                        _showSnackbar(context, Colors.green, "Exito!!"),
                  ),
                  ElevatedButton(
                    child: const Text("Peligro!!"),
                    onPressed: () =>
                        _showSnackbar(context, Colors.red, "Peligro!!"),
                  ),
                ],
              ),
            );
          },
        ));
  }

  void _showSnackbar(BuildContext context, Color color, String text) {
    ScaffoldMessenger.of(context).clearSnackBars();
    SnackBar snackbar = SnackBar(
        content: Text(text),
        backgroundColor: color,
        duration: const Duration(seconds: 3),
        action: SnackBarAction(
          label: "Cancelar",
          textColor: Colors.white,
          onPressed: () {},
        ));
    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }
}
