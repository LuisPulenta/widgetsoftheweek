import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GoogleFontsScreen extends StatelessWidget {
  const GoogleFontsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GoogleFonts'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Esta fuente es Lobster desde HTTP',
              style: GoogleFonts.lobster(
                textStyle: const TextStyle(fontSize: 20),
              ),
            ),
            Text(
              'Esta fuente es Aboreto desde HTTP',
              style: GoogleFonts.aboreto(
                textStyle: const TextStyle(fontSize: 20),
              ),
            ),
            const Text(
              'Esta fuente es PTSansNarrow-Regular puesta en el theme',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
