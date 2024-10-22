import 'package:flutter/material.dart';
import 'package:widgetsoftheweek/screens/BC/screens.dart';
import 'package:widgetsoftheweek/widgets/widgets.dart';

class BCScreen extends StatelessWidget {
  const BCScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double anchoBoton = MediaQuery.of(context).size.width;
    double altoBoton = 50;
    Color color = const Color.fromARGB(255, 73, 24, 220);
    return Scaffold(
        backgroundColor: Colors.cyan,
        appBar: AppBar(
          title: const Text('B_C'),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 73, 24, 220),
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Boton(
                  titulo: "Baseline",
                  screen: Container(),
                  ancho: anchoBoton,
                  alto: altoBoton,
                  color: color),
              Boton(
                titulo: "Builder",
                screen: const BuilderScreen(),
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
                  titulo: "CachedNetworkImage",
                  screen: Container(),
                  ancho: anchoBoton,
                  alto: altoBoton,
                  color: color),
              Boton(
                titulo: "CheckBoxListTile",
                screen: const CheckBoxListTileScreen(),
                ancho: anchoBoton,
                alto: altoBoton,
                color: color,
                ok: true,
              ),
              Boton(
                titulo: "Circular & Linear Progress Indicator",
                screen: const CircularLinearProgressIndicatorScreen(),
                ancho: anchoBoton,
                alto: altoBoton,
                color: color,
                ok: true,
              ),
              Boton(
                titulo: "ClipOval",
                screen: const ClipOvalScreen(),
                ancho: anchoBoton,
                alto: altoBoton,
                color: color,
                ok: true,
              ),
              Boton(
                titulo: "ClipPath",
                screen: const ClipPathScreen(),
                ancho: anchoBoton,
                alto: altoBoton,
                color: color,
                ok: true,
              ),
              Boton(
                titulo: "ClipRRect",
                screen: const ClipRRectScreen(),
                ancho: anchoBoton,
                alto: altoBoton,
                color: color,
                ok: true,
              ),
              Boton(
                  titulo: "Colección",
                  screen: Container(),
                  ancho: anchoBoton,
                  alto: altoBoton,
                  color: color),
              Boton(
                titulo: "ColorFiltered",
                screen: const ColorFilteredScreen(),
                ancho: anchoBoton,
                alto: altoBoton,
                color: color,
                ok: true,
              ),
              Boton(
                titulo: "Connectivity",
                screen: const ConnectivityScreen(),
                ancho: anchoBoton,
                alto: altoBoton,
                color: color,
                ok: true,
              ),
              Boton(
                titulo: "ConstrainedBox",
                screen: const ConstrainedBoxScreen(),
                ancho: anchoBoton,
                alto: altoBoton,
                color: color,
                ok: true,
              ),
              Boton(
                titulo: "Container",
                screen: const ContainerScreen(),
                ancho: anchoBoton,
                alto: altoBoton,
                color: color,
                ok: true,
              ),
              Boton(
                  titulo: "CupertinoActionSheets",
                  screen: Container(),
                  ancho: anchoBoton,
                  alto: altoBoton,
                  color: color),
              Boton(
                titulo: "CupertinoActivityIndicator",
                screen: const CupertinoActivityIndicatorScreen(),
                ancho: anchoBoton,
                alto: altoBoton,
                color: color,
                ok: true,
              ),
              Boton(
                  titulo: "CustomPainter",
                  screen: const CustomPainterScreen(),
                  ancho: anchoBoton,
                  alto: altoBoton,
                  color: color,
                  ok: true),
            ],
          ),
        ));
  }
}
