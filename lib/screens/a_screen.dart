import 'package:flutter/material.dart';
import 'package:widgetsoftheweek/screens/A/animated_builder_screen.dart';
import 'package:widgetsoftheweek/screens/A/screens.dart';
import 'package:widgetsoftheweek/widgets/widgets.dart';

class AScreen extends StatelessWidget {
  const AScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double anchoBoton = MediaQuery.of(context).size.width;
    double altoBoton = 50;
    Color color = const Color.fromARGB(255, 21, 98, 240);
    return Scaffold(
        backgroundColor: Colors.cyan,
        appBar: AppBar(
          title: const Text('A'),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 21, 98, 240),
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Boton(
                  titulo: "AboutDialog",
                  screen: Container(),
                  ancho: anchoBoton,
                  alto: altoBoton,
                  color: color),
              Boton(
                titulo: "AbsorbPointer",
                screen: const AbsorbPointerScreen(),
                ancho: anchoBoton,
                alto: altoBoton,
                color: color,
                ok: true,
              ),
              Boton(
                titulo: "AlertDialog",
                screen: const AlertDialogScreen(),
                ancho: anchoBoton,
                alto: altoBoton,
                color: color,
                ok: true,
              ),
              Boton(
                titulo: "Align",
                screen: const AlignScreen(),
                ancho: anchoBoton,
                alto: altoBoton,
                color: color,
                ok: true,
              ),
              Boton(
                titulo: "Animated Builder",
                screen: const AnimatedBuilderScreen(),
                ancho: anchoBoton,
                alto: altoBoton,
                color: color,
                ok: true,
              ),
              Boton(
                titulo: "Animated Container",
                screen: const AnimatedContainerScreen(),
                ancho: anchoBoton,
                alto: altoBoton,
                color: color,
                ok: true,
              ),
              Boton(
                  titulo: "animated_text_kit",
                  screen: Container(),
                  ancho: anchoBoton,
                  alto: altoBoton,
                  color: color),
              Boton(
                titulo: "AnimatedCrossFade",
                screen: const AnimatedCrossFadeScreen(),
                ancho: anchoBoton,
                alto: altoBoton,
                color: color,
                ok: true,
              ),
              Boton(
                titulo: "AnimatedIcon",
                screen: const AnimatedIconScreen(),
                ancho: anchoBoton,
                alto: altoBoton,
                color: color,
                ok: true,
              ),
              Boton(
                titulo: "AnimatedList",
                screen: const AnimatedListScreen(),
                ancho: anchoBoton,
                alto: altoBoton,
                color: color,
                ok: true,
              ),
              Boton(
                titulo: "AnimatedOpacity",
                screen: const AnimatedOpacityScreen(),
                ancho: anchoBoton,
                alto: altoBoton,
                color: color,
                ok: true,
              ),
              Boton(
                titulo: "AnimatedPadding",
                screen: const AnimatedPaddingScreen(),
                ancho: anchoBoton,
                alto: altoBoton,
                color: color,
                ok: true,
              ),
              Boton(
                titulo: "AnimatedPositioned",
                screen: const AnimatedPositionedScreen(),
                ancho: anchoBoton,
                alto: altoBoton,
                color: color,
                ok: true,
              ),
              Boton(
                titulo: "AnimatedSwitcher",
                screen: const AnimatedSwitcherScreen(),
                ancho: anchoBoton,
                alto: altoBoton,
                color: color,
                ok: true,
              ),
              Boton(
                  titulo: "AnimatedWidget",
                  screen: Container(),
                  ancho: anchoBoton,
                  alto: altoBoton,
                  color: color),
              Boton(
                  titulo: "Animations",
                  screen: Container(),
                  ancho: anchoBoton,
                  alto: altoBoton,
                  color: color),
              Boton(
                titulo: "AspectRatio",
                screen: const AspectRatioScreen(),
                ancho: anchoBoton,
                alto: altoBoton,
                color: color,
                ok: true,
              ),
              Boton(
                  titulo: "Autocomplete",
                  screen: Container(),
                  ancho: anchoBoton,
                  alto: altoBoton,
                  color: color),
            ],
          ),
        ));
  }
}
