import 'package:flutter/material.dart';
import 'package:widgetsoftheweek/screens/PR/pageview_screen.dart';
import 'package:widgetsoftheweek/screens/PR/positioned_screen.dart';
import 'package:widgetsoftheweek/screens/PR/screens.dart';
import 'package:widgetsoftheweek/widgets/widgets.dart';

class PRScreen extends StatelessWidget {
  const PRScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double anchoBoton = MediaQuery.of(context).size.width;
    double altoBoton = 50;
    Color color = const Color.fromARGB(255, 2, 68, 12);
    return Scaffold(
        backgroundColor: Colors.cyan,
        appBar: AppBar(
          title: const Text('P-R'),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 2, 68, 12),
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Boton(
                  titulo: "Package:async",
                  screen: Container(),
                  ancho: anchoBoton,
                  alto: altoBoton,
                  color: color),
              Boton(
                  titulo: "package:html",
                  screen: Container(),
                  ancho: anchoBoton,
                  alto: altoBoton,
                  color: color),
              Boton(
                titulo: "Padding",
                screen: const PaddingScreen(),
                ancho: anchoBoton,
                alto: altoBoton,
                color: color,
                ok: true,
              ),
              Boton(
                titulo: "PageView",
                screen: PageviewScreen(),
                ancho: anchoBoton,
                alto: altoBoton,
                color: color,
                ok: true,
              ),
              Boton(
                  titulo: "path_provider",
                  screen: Container(),
                  ancho: anchoBoton,
                  alto: altoBoton,
                  color: color),
              Boton(
                  titulo: "PhysicalModel",
                  screen: Container(),
                  ancho: anchoBoton,
                  alto: altoBoton,
                  color: color),
              Boton(
                titulo: "Placeholder",
                screen: const PlaceholderScreen(),
                ancho: anchoBoton,
                alto: altoBoton,
                color: color,
                ok: true,
              ),
              Boton(
                  titulo: "Positioned",
                  screen: const PositionedScreen(),
                  ancho: anchoBoton,
                  alto: altoBoton,
                  color: color,
                  ok: true),
              const Divider(
                color: Colors.white,
                thickness: 4,
                height: 10,
              ),
              Boton(
                  titulo: "RefreshIndicator",
                  screen: Container(),
                  ancho: anchoBoton,
                  alto: altoBoton,
                  color: color),
              Boton(
                  titulo: "ReorderableListView",
                  screen: const ReorderableListViewScreen(),
                  ancho: anchoBoton,
                  alto: altoBoton,
                  color: color,
                  ok: true),
              Boton(
                  titulo: "RepaintBoundary",
                  screen: Container(),
                  ancho: anchoBoton,
                  alto: altoBoton,
                  color: color),
              Boton(
                titulo: "RichText",
                screen: const RichTextScreen(),
                ancho: anchoBoton,
                alto: altoBoton,
                color: color,
                ok: true,
              ),
              Boton(
                  titulo: "RotatedBox",
                  screen: Container(),
                  ancho: anchoBoton,
                  alto: altoBoton,
                  color: color),
            ],
          ),
        ));
  }
}
