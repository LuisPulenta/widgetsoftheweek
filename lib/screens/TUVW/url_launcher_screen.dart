import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlLauncherScreen extends StatelessWidget {
  const UrlLauncherScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UrlLauncher'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  const Text('Ir a una página Web'),
                  const Spacer(),
                  IconButton(
                    onPressed: () async {
                      await launch(
                          'https://fonts.google.com/icons?icon.query=web');
                    },
                    icon: const Icon(
                      Icons.language,
                      size: 50,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  const Text('Llamar a un N° de teléfono'),
                  const Spacer(),
                  IconButton(
                    onPressed: () async {
                      await launch('tel: +5493516814963');
                    },
                    icon: const Icon(
                      Icons.phone,
                      size: 50,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  const Text('Enviar un SMS'),
                  const Spacer(),
                  IconButton(
                    onPressed: () async {
                      await launch('sms: +5493516814963');
                    },
                    icon: const Icon(
                      Icons.sms,
                      size: 50,
                      color: Colors.greenAccent,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  const Text('UrlLauncEnviar un mail'),
                  const Spacer(),
                  IconButton(
                    onPressed: () async {
                      await launch('mailto: luisnu@yopmail.com');
                    },
                    icon: const Icon(
                      Icons.mail,
                      size: 50,
                      color: Colors.orange,
                    ),
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
