import 'package:flutter/material.dart';

class PaddingScreen extends StatelessWidget {
  const PaddingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Padding'),
        centerTitle: true,
      ),
      body: Column(children: [
        Row(
          children: [
            Container(
              width: size.width * 0.5,
              height: size.width * 0.5,
              color: Colors.amber,
              child: const Padding(
                padding: EdgeInsets.all(30.0),
                child: _Rectangulo(medida: 50, color: Colors.blue, text: "all"),
              ),
            ),
            Container(
              width: size.width * 0.5,
              height: size.width * 0.5,
              color: Colors.pink,
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                child: _Rectangulo(
                    medida: 50,
                    color: Colors.red,
                    text: "symmetric horizontal"),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Container(
              width: size.width * 0.5,
              height: size.width * 0.5,
              color: Colors.cyan,
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 30.0),
                child: _Rectangulo(
                    medida: 50,
                    color: Colors.green,
                    text: "symmetric vertical"),
              ),
            ),
            Container(
              width: size.width * 0.5,
              height: size.width * 0.5,
              color: Colors.orange,
              child: const Padding(
                padding: EdgeInsets.fromLTRB(20, 40, 60, 80),
                child: _Rectangulo(
                    medida: 50, color: Colors.blue, text: "fromLTRB"),
              ),
            )
          ],
        ),
        Row(
          children: [
            Container(
              width: size.width * 0.5,
              height: size.width * 0.5,
              color: Colors.brown,
              child: const Padding(
                padding: EdgeInsets.only(bottom: 30.0),
                child:
                    _Rectangulo(medida: 50, color: Colors.yellow, text: "only"),
              ),
            ),
            Container(
              width: size.width * 0.5,
              height: size.width * 0.5,
              color: Colors.indigoAccent,
              child: const Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 40, 60, 80),
                child: _Rectangulo(
                    medida: 50,
                    color: Colors.deepPurpleAccent,
                    text: "fromSTEB"),
              ),
            )
          ],
        )
      ]),
    );
  }
}

class _Rectangulo extends StatelessWidget {
  final double medida;
  final Color color;
  final String text;

  const _Rectangulo(
      {required this.medida, required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: medida,
      height: medida,
      decoration: BoxDecoration(color: color),
      child: Center(
        child: Text(text),
      ),
    );
  }
}
