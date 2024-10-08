import 'package:flutter/material.dart';

class AlertDialogScreen extends StatelessWidget {
  const AlertDialogScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("AlertDialog")),
      body: Center(
        child: ElevatedButton(
          onPressed: () => displayDialogAndroid(context),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Text(
              "Mostrar Alerta",
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.close),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }

  void displayDialogAndroid(BuildContext context) {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text("Título"),
            elevation: 5,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text("Este es el contenido de la Alerta"),
                const SizedBox(
                  height: 30,
                ),
                const FlutterLogo(
                  size: 50,
                ),
                SizedBox(height: 50, child: Image.asset("assets/loading.gif")),
                FadeInImage.assetNetwork(
                  height: 100,
                  width: 100,
                  fadeInDuration: const Duration(milliseconds: 1000),
                  fadeInCurve: Curves.easeIn,
                  placeholder: 'assets/loading.gif',
                  image:
                      'https://d3ekkp2oigezer.cloudfront.net/business/531/products/pVov7W_5ee5350f6374e_large.png',
                ),
              ],
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text("SI"),
              ),
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text("NO", style: TextStyle(color: Colors.red)),
              ),
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text("Cancelar"),
              ),
            ],
          );
        });
  }
}
