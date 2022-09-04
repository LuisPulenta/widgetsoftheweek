import 'package:flutter/material.dart';

class MediaQueryScreen extends StatelessWidget {
  const MediaQueryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var deviceData = MediaQuery.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('MediaQuery'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            children: [
              Row(
                children: [
                  const Text('Ancho de la pantalla: ',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text(deviceData.size.width.toString()),
                ],
              ),
              Row(
                children: [
                  const Text('Alto de la pantalla: ',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text(deviceData.size.height.toString()),
                ],
              ),
              Row(
                children: [
                  const Text('Orientación: ',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text(deviceData.orientation.toString()),
                ],
              ),
              Row(
                children: [
                  const Text('Brillo: ',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text(deviceData.platformBrightness.toString()),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: const [
                  Flexible(
                    child: Text(
                        'ROTE EL DISPOSITIVO PARA VER COMO CAMBIAN LOS VALORES',
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
