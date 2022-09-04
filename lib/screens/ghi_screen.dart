import 'package:flutter/material.dart';
import 'package:widgetsoftheweek/screens/GHI/hero_screen.dart';
import 'package:widgetsoftheweek/widgets/widgets.dart';

class GHIScreen extends StatelessWidget {
  const GHIScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double anchoBoton = MediaQuery.of(context).size.width;
    double altoBoton = 50;
    Color color = const Color.fromARGB(255, 220, 96, 48);
    return Scaffold(
        backgroundColor: Colors.cyan,
        appBar: AppBar(
          title: const Text('G-H-I'),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 220, 96, 48),
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Boton(
                  titulo: "GestureDetector",
                  screen: Container(),
                  ancho: anchoBoton,
                  alto: altoBoton,
                  color: color),
              Boton(
                  titulo: "get_it",
                  screen: Container(),
                  ancho: anchoBoton,
                  alto: altoBoton,
                  color: color),
              Boton(
                  titulo: "google_fonts",
                  screen: Container(),
                  ancho: anchoBoton,
                  alto: altoBoton,
                  color: color),
              Boton(
                  titulo: "GridView",
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
                titulo: "Hero",
                screen: HeroScreen(),
                ancho: anchoBoton,
                alto: altoBoton,
                color: color,
                ok: true,
              ),
              Boton(
                  titulo: "HeroMode",
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
                  titulo: "IgnorePointer",
                  screen: Container(),
                  ancho: anchoBoton,
                  alto: altoBoton,
                  color: color),
              Boton(
                  titulo: "Image",
                  screen: Container(),
                  ancho: anchoBoton,
                  alto: altoBoton,
                  color: color),
              Boton(
                  titulo: "ImageFilter",
                  screen: Container(),
                  ancho: anchoBoton,
                  alto: altoBoton,
                  color: color),
              Boton(
                  titulo: "ImageFiltered",
                  screen: Container(),
                  ancho: anchoBoton,
                  alto: altoBoton,
                  color: color),
              Boton(
                  titulo: "IndexedStack",
                  screen: Container(),
                  ancho: anchoBoton,
                  alto: altoBoton,
                  color: color),
              Boton(
                  titulo: "InheritedWidget",
                  screen: Container(),
                  ancho: anchoBoton,
                  alto: altoBoton,
                  color: color),
              Boton(
                  titulo: "Insignias",
                  screen: Container(),
                  ancho: anchoBoton,
                  alto: altoBoton,
                  color: color),
              Boton(
                  titulo: "InteractiveViewer",
                  screen: Container(),
                  ancho: anchoBoton,
                  alto: altoBoton,
                  color: color),
            ],
          ),
        ));
  }
}
