import 'package:flutter/material.dart';
import 'package:widgetsoftheweek/screens/screens.dart';
import 'package:widgetsoftheweek/widgets/boton.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double anchoBoton = MediaQuery.of(context).size.width / 4;
    double altoBoton = MediaQuery.of(context).size.height / 4;
    return Scaffold(
      backgroundColor: Colors.cyan,
      appBar: AppBar(
        title: const Text('Widgets of the Week'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Boton(
                    titulo: "A",
                    screen: const AScreen(),
                    ancho: anchoBoton,
                    alto: altoBoton,
                    color: const Color.fromARGB(255, 21, 98, 240),
                    ok: true),
                Boton(
                    titulo: "B-C",
                    screen: const BCScreen(),
                    ancho: anchoBoton,
                    alto: altoBoton,
                    color: const Color.fromARGB(255, 73, 24, 220),
                    ok: true),
                Boton(
                    titulo: "D-E",
                    screen: const DEScreen(),
                    ancho: anchoBoton,
                    alto: altoBoton,
                    color: const Color.fromARGB(255, 155, 54, 244),
                    ok: true),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Boton(
                    titulo: "F",
                    screen: const FScreen(),
                    ancho: anchoBoton,
                    alto: altoBoton,
                    color: const Color.fromARGB(255, 238, 99, 7),
                    ok: true),
                Boton(
                    titulo: "G-H-I",
                    screen: const GHIScreen(),
                    ancho: anchoBoton,
                    alto: altoBoton,
                    color: const Color.fromARGB(255, 220, 96, 48),
                    ok: true),
                Boton(
                    titulo: "L-M-N-O",
                    screen: const LMNOScreen(),
                    ancho: anchoBoton,
                    alto: altoBoton,
                    color: const Color.fromARGB(255, 218, 79, 69),
                    ok: true),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Boton(
                    titulo: "P-R",
                    screen: const PRScreen(),
                    ancho: anchoBoton,
                    alto: altoBoton,
                    color: const Color.fromARGB(255, 2, 68, 12),
                    ok: true),
                Boton(
                    titulo: "S",
                    screen: const SScreen(),
                    ancho: anchoBoton,
                    alto: altoBoton,
                    color: const Color.fromARGB(255, 17, 240, 192),
                    ok: true),
                Boton(
                    titulo: "T-U-V-W",
                    screen: const TUVWScreen(),
                    ancho: anchoBoton,
                    alto: altoBoton,
                    color: const Color.fromARGB(255, 55, 142, 21),
                    ok: true),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
