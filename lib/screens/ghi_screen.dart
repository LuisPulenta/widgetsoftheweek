import 'package:flutter/material.dart';
import 'package:widgetsoftheweek/screens/GHI/screens.dart';
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
                screen: const GestureDetectorScreen(),
                ancho: anchoBoton,
                alto: altoBoton,
                color: color,
                ok: true,
              ),
              Boton(
                  titulo: "get_it",
                  screen: Container(),
                  ancho: anchoBoton,
                  alto: altoBoton,
                  color: color),
              Boton(
                titulo: "google_fonts",
                screen: const GoogleFontsScreen(),
                ancho: anchoBoton,
                alto: altoBoton,
                color: color,
                ok: true,
              ),
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
                screen: const HeroModeScreen(),
                ancho: anchoBoton,
                alto: altoBoton,
                color: color,
                ok: true,
              ),
              Boton(
                titulo: "HeroMode",
                screen: const HeroModeScreen(),
                ancho: anchoBoton,
                alto: altoBoton,
                color: color,
                ok: true,
              ),
              const Divider(
                color: Colors.white,
                thickness: 4,
                height: 10,
              ),
              Boton(
                titulo: "IgnorePointer",
                screen: const IgnorePointerScreen(),
                ancho: anchoBoton,
                alto: altoBoton,
                color: color,
                ok: true,
              ),
              Boton(
                titulo: "Image",
                screen: const ImageScreen(),
                ancho: anchoBoton,
                alto: altoBoton,
                color: color,
                ok: true,
              ),
              Boton(
                titulo: "ImageFilter",
                screen: const ImageFilterScreen(),
                ancho: anchoBoton,
                alto: altoBoton,
                color: color,
                ok: true,
              ),
              Boton(
                titulo: "ImageFiltered",
                screen: const ImageFilteredScreen(),
                ancho: anchoBoton,
                alto: altoBoton,
                color: color,
                ok: true,
              ),
              Boton(
                titulo: "IndexedStack",
                screen: const IndexedStackScreen(),
                ancho: anchoBoton,
                alto: altoBoton,
                color: color,
                ok: true,
              ),
              Boton(
                titulo: "InheritedWidget",
                screen: const InheritedWidgetScreen(),
                ancho: anchoBoton,
                alto: altoBoton,
                color: color,
                ok: true,
              ),
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
