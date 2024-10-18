import 'package:flutter/material.dart';

class ClipOvalScreen extends StatelessWidget {
  const ClipOvalScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ClipOval'),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ClipOval(child: Image.asset("assets/horizontal.jpg")),
              ClipOval(child: Image.asset("assets/cuadrada.jpg")),
              ClipOval(child: Image.asset("assets/vertical.jpg")),
              ClipOval(
                child: Image.asset("assets/hp.jpg"),
                clipper: MyClipper(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//-----------------------------------------------------------------------
class MyClipper extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    return const Rect.fromLTWH(50, 00, 300, 140);
  }

  @override
  bool shouldReclip(covariant CustomClipper<Rect> oldClipper) {
    return true;
  }
}
