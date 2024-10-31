import 'package:flutter/material.dart';

class MediaQueryPropertyOfScreen extends StatelessWidget {
  const MediaQueryPropertyOfScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //var a=MediaQuery.SizeOf(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('MediaQueryPropertyOf'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('No funciona la propiedad MediaQuery.SizeOf'),
      ),
    );
  }
}
