import 'package:flutter/material.dart';
import 'package:widgetsoftheweek/screens/LMNO/opacity_screen.dart';
import 'package:widgetsoftheweek/screens/LMNO/screen.dart';
import 'package:widgetsoftheweek/widgets/widgets.dart';

class LMNOScreen extends StatelessWidget {
  const LMNOScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double anchoBoton = MediaQuery.of(context).size.width;
    double altoBoton = 50;
    Color color = const Color.fromARGB(255, 218, 79, 69);
    return Scaffold(
        backgroundColor: Colors.cyan,
        appBar: AppBar(
          title: const Text('L-M-N-O'),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 218, 79, 69),
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Boton(
                titulo: "LayoutBuilder",
                screen: const LayoutBuilderScreen(),
                ancho: anchoBoton,
                alto: altoBoton,
                color: color,
                ok: true,
              ),
              Boton(
                titulo: "LimitedBox",
                screen: const LimitedBoxScreen(),
                ancho: anchoBoton,
                alto: altoBoton,
                color: color,
                ok: true,
              ),
              Boton(
                  titulo: "LinearGradient",
                  screen: Container(),
                  ancho: anchoBoton,
                  alto: altoBoton,
                  color: color),
              Boton(
                titulo: "ListTile",
                screen: const ListTileScreen(),
                ancho: anchoBoton,
                alto: altoBoton,
                color: color,
                ok: true,
              ),
              Boton(
                titulo: "ListView",
                screen: const ListViewScreen(),
                ancho: anchoBoton,
                alto: altoBoton,
                color: color,
                ok: true,
              ),
              Boton(
                titulo: "ListWheelScrollView",
                screen: const ListWheelScrollViewScreen(),
                ancho: anchoBoton,
                alto: altoBoton,
                color: color,
                ok: true,
              ),
              Boton(
                  titulo: "Location",
                  screen: Container(),
                  ancho: anchoBoton,
                  alto: altoBoton,
                  color: color),
              const Divider(
                color: Colors.white,
                thickness: 4,
                height: 10,
              ),
              Boton(
                  titulo: "mason",
                  screen: Container(),
                  ancho: anchoBoton,
                  alto: altoBoton,
                  color: color),
              Boton(
                  titulo: "MediaQuery",
                  screen: const MediaQueryScreen(),
                  ancho: anchoBoton,
                  alto: altoBoton,
                  color: color,
                  ok: true),
              Boton(
                  titulo: "MouseRegion",
                  screen: Container(),
                  ancho: anchoBoton,
                  alto: altoBoton,
                  color: color),
              const Divider(
                color: Colors.white,
                thickness: 4,
                height: 10,
              ),
              Boton(
                  titulo: "NavigationRail",
                  screen: Container(),
                  ancho: anchoBoton,
                  alto: altoBoton,
                  color: color),
              Boton(
                  titulo: "NotificationListener",
                  screen: Container(),
                  ancho: anchoBoton,
                  alto: altoBoton,
                  color: color),
              const Divider(
                color: Colors.white,
                thickness: 4,
                height: 10,
              ),
              Boton(
                titulo: "Opacity y AnimatedOpacity",
                screen: const OpacityScreen(),
                ancho: anchoBoton,
                alto: altoBoton,
                color: color,
                ok: true,
              ),
            ],
          ),
        ));
  }
}
