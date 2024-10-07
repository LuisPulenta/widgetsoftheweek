import 'package:flutter/material.dart';

class RichTextScreen extends StatelessWidget {
  const RichTextScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RichText'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
              text: const TextSpan(
                  style: TextStyle(color: Colors.black, fontSize: 16),
                  children: [
                    TextSpan(text: "It's "),
                    TextSpan(
                        text: "all",
                        style: TextStyle(
                          color: Colors.red,
                        )),
                    TextSpan(text: " Widgets"),
                  ]),
            ),
            RichText(
              text: const TextSpan(
                  style: TextStyle(color: Colors.black, fontSize: 16),
                  children: [
                    TextSpan(text: "It's "),
                    TextSpan(
                        text: "all",
                        style: TextStyle(
                          fontSize: 28,
                        )),
                    TextSpan(text: " Widgets"),
                  ]),
            ),
            RichText(
              text: const TextSpan(
                  style: TextStyle(color: Colors.black, fontSize: 16),
                  children: [
                    TextSpan(text: "It's "),
                    TextSpan(
                        text: "all",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: " Widgets"),
                  ]),
            ),
            RichText(
              text: const TextSpan(
                  style: TextStyle(color: Colors.black, fontSize: 16),
                  children: [
                    TextSpan(text: "It's "),
                    TextSpan(
                        text: "all",
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 28,
                            fontWeight: FontWeight.bold)),
                    TextSpan(text: " Widgets"),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
