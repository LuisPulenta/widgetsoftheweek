import 'package:flutter/material.dart';

class Boton extends StatelessWidget {
  final String titulo;
  final Widget screen;
  final double ancho;
  final double alto;
  final Color color;
  final bool ok;

  const Boton(
      {Key? key,
      required this.titulo,
      required this.screen,
      required this.ancho,
      required this.alto,
      required this.color,
      this.ok = false})
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
          primary: ok ? color : Colors.grey,
          minimumSize: Size(ancho, alto),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        onPressed: () {
          ok
              ? Navigator.push(
                  context, MaterialPageRoute(builder: (context) => screen))
              : null;
        },
      ),
    );
  }
}
