import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoActionsSheetScreen extends StatefulWidget {
  const CupertinoActionsSheetScreen({Key? key}) : super(key: key);

  @override
  State<CupertinoActionsSheetScreen> createState() =>
      _CupertinoActionsSheetScreenState();
}

class _CupertinoActionsSheetScreenState
    extends State<CupertinoActionsSheetScreen> {
  String option = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CupertinoActionsSheet'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("La opción seleccionada es: $option"),
              ElevatedButton(
                child: const Text(
                  'Apretame',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () async {
                  final act = CupertinoActionSheet(
                      title: const Text('Selecciona una opción'),
                      message: const Text('Cual opción?'),
                      actions: <Widget>[
                        CupertinoActionSheetAction(
                          child: const Text('1'),
                          onPressed: () {
                            Navigator.of(context, rootNavigator: true).pop("1");
                          },
                        ),
                        CupertinoActionSheetAction(
                          child: const Text('2'),
                          onPressed: () {
                            Navigator.of(context, rootNavigator: true).pop("2");
                          },
                        ),
                        CupertinoActionSheetAction(
                          child: const Text('3'),
                          onPressed: () {
                            Navigator.of(context, rootNavigator: true).pop("3");
                          },
                        )
                      ],
                      cancelButton: CupertinoActionSheetAction(
                        child: const Text('Cancelar'),
                        onPressed: () {
                          Navigator.of(context, rootNavigator: true)
                              .pop("Cancelar");
                        },
                      ));
                  option = await showCupertinoModalPopup(
                      context: context, builder: (BuildContext context) => act);
                  setState(() {});
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
