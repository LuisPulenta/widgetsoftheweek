import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class GapScreen extends StatelessWidget {
  const GapScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gap'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const _CuadradoConColor(lado: 70, color: Colors.yellow),
          const Gap(10),
          const _CuadradoConColor(lado: 70, color: Colors.orange),
          const Gap(20),
          const _CuadradoConColor(lado: 70, color: Colors.green),
          const Gap(30),
          const _CuadradoConColor(lado: 70, color: Colors.red),
          const Gap(40),
          const _CuadradoConColor(lado: 70, color: Colors.blue),
          const Gap(50),
          const Divider(
            color: Colors.red,
          ),
          const Gap(20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              _CuadradoConColor(lado: 30, color: Colors.yellow),
              Gap(10),
              _CuadradoConColor(lado: 30, color: Colors.orange),
              Gap(20),
              _CuadradoConColor(lado: 30, color: Colors.green),
              Gap(30),
              _CuadradoConColor(lado: 30, color: Colors.red),
              Gap(40),
              _CuadradoConColor(lado: 30, color: Colors.blue),
            ],
          )
        ],
      ),
    );
  }
}

//----------------- CuadradoConColor -------------------
class _CuadradoConColor extends StatelessWidget {
  final double lado;
  final Color color;

  const _CuadradoConColor({super.key, required this.lado, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: lado,
      height: lado,
      decoration: BoxDecoration(color: color),
    );
  }
}
