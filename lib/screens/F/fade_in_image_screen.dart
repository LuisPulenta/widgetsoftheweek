import 'package:flutter/material.dart';

class FadeInImageScreen extends StatelessWidget {
  const FadeInImageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FadeInImage'),
        centerTitle: true,
      ),
      body: Center(
        child: FadeInImage.assetNetwork(
          height: 300,
          width: 300,
          fadeInDuration: Duration(milliseconds: 5000),
          fadeInCurve: Curves.bounceInOut,
          placeholder: 'assets/loading.gif',
          image:
              'https://d3ekkp2oigezer.cloudfront.net/business/531/products/pVov7W_5ee5350f6374e_large.png',
        ),
      ),
    );
  }
}
