import 'package:flutter/material.dart';

class Boton extends StatelessWidget {
  final String titulo;
  final Widget screen;
  final double ancho;
  final double alto;
  final Color color;

  const Boton(
      {Key? key,
      required this.titulo,
      required this.screen,
      required this.ancho,
      required this.alto,
      required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ElevatedButton(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(titulo,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),
          ],
        ),
        style: ElevatedButton.styleFrom(
          primary: color,
          minimumSize: Size(ancho, alto),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => screen));
        },
      ),
    );
  }
}
