import 'package:flutter/material.dart';

class RawMagnifierScreen extends StatefulWidget {
  const RawMagnifierScreen({Key? key}) : super(key: key);

  @override
  State<RawMagnifierScreen> createState() => _RawMagnifierScreenState();
}

class _RawMagnifierScreenState extends State<RawMagnifierScreen> {
  double dx = 0;
  double dy = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RawMagnifier'),
        centerTitle: true,
      ),
      body: Center(
        child: Stack(
          children: [
            GestureDetector(
              child: const MyWidget(),
              onPanUpdate: (details) {
                dx = details.globalPosition.dx;
                dy = details.globalPosition.dy;
                setState(() {});
              },
            ),
            Positioned(
              left: dx,
              top: dy,
              child: const RawMagnifier(
                decoration: MagnifierDecoration(
                  shadows: [
                    BoxShadow(
                      color: Colors.white,
                    )
                  ],
                  opacity: 1,
                  shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.purple)),
                ),
                magnificationScale: 2,
                size: Size(250, 60),
                child: MyWidget(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//----------------------------------------------------------------------------
class MyWidget extends StatelessWidget {
  const MyWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20.0),
      child: Text(
          'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas Letraset, las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.'),
    );
  }
}
