import 'package:flutter/material.dart';
import 'package:widgetsoftheweek/screens/F/screens.dart';
import 'package:widgetsoftheweek/widgets/widgets.dart';

class FScreen extends StatelessWidget {
  const FScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double anchoBoton = MediaQuery.of(context).size.width;
    double altoBoton = 50;
    Color color = const Color.fromARGB(255, 238, 99, 7);
    return Scaffold(
        backgroundColor: Colors.cyan,
        appBar: AppBar(
          title: const Text('F'),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 238, 99, 7),
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Boton(
                titulo: "FadeInImage",
                screen: const FadeInImageScreen(),
                ancho: anchoBoton,
                alto: altoBoton,
                color: color,
                ok: true,
              ),
              Boton(
                  titulo: "FadeTransition",
                  screen: Container(),
                  ancho: anchoBoton,
                  alto: altoBoton,
                  color: color),
              Boton(
                  titulo: "Feezed",
                  screen: Container(),
                  ancho: anchoBoton,
                  alto: altoBoton,
                  color: color),
              Boton(
                titulo: "FittedBox",
                screen: const FittedBoxScreen(),
                ancho: anchoBoton,
                alto: altoBoton,
                color: color,
                ok: true,
              ),
              Boton(
                titulo: "Flexible",
                screen: FlexibleScreen(),
                ancho: anchoBoton,
                alto: altoBoton,
                color: color,
                ok: true,
              ),
              Boton(
                titulo: "Floating Action Button",
                screen: const FloatingActionButtonScreen(),
                ancho: anchoBoton,
                alto: altoBoton,
                color: color,
                ok: true,
              ),
              Boton(
                  titulo: "Flow",
                  screen: Container(),
                  ancho: anchoBoton,
                  alto: altoBoton,
                  color: color),
              Boton(
                  titulo: "flutter_rating_bar",
                  screen: Container(),
                  ancho: anchoBoton,
                  alto: altoBoton,
                  color: color),
              Boton(
                  titulo: "flutter_slidable",
                  screen: Container(),
                  ancho: anchoBoton,
                  alto: altoBoton,
                  color: color),
              Boton(
                  titulo: "FlutterLogo",
                  screen: Container(),
                  ancho: anchoBoton,
                  alto: altoBoton,
                  color: color),
              Boton(
                  titulo: "FocusableActionDetector",
                  screen: Container(),
                  ancho: anchoBoton,
                  alto: altoBoton,
                  color: color),
              Boton(
                  titulo: "font_awesome_flutter",
                  screen: Container(),
                  ancho: anchoBoton,
                  alto: altoBoton,
                  color: color),
              Boton(
                  titulo: "FractionallySizedBox",
                  screen: Container(),
                  ancho: anchoBoton,
                  alto: altoBoton,
                  color: color),
              Boton(
                  titulo: "FutureBuilder",
                  screen: Container(),
                  ancho: anchoBoton,
                  alto: altoBoton,
                  color: color),
            ],
          ),
        ));
  }
}
