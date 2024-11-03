import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

class PathProviderScreen extends StatefulWidget {
  const PathProviderScreen({Key? key}) : super(key: key);

  @override
  State<PathProviderScreen> createState() => _PathProviderScreenState();
}

class _PathProviderScreenState extends State<PathProviderScreen> {
  String directory1 = '';
  String directory2 = '';
  String directory3 = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PathProvider'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                onPressed: () async {
                  Directory appDocDir1 =
                      await getApplicationDocumentsDirectory();
                  Directory appDocDir2 = await getApplicationSupportDirectory();
                  Directory appDocDir3 = await getTemporaryDirectory();
                  directory1 = appDocDir1.path;
                  directory2 = appDocDir2.path;
                  directory3 = appDocDir3.path;
                  setState(() {});
                },
                child: const Text("Obtener Directorios"),
              ),
              Text("El directorio de Documentos es: \n $directory1"),
              Text("El directorio de Soporte es: $directory2"),
              Text("El directorio Temporal es: $directory3"),
            ],
          ),
        ),
      ),
    );
  }
}
