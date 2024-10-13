import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SliderrangeslidercupertinosliderScreen extends StatefulWidget {
  const SliderrangeslidercupertinosliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderrangeslidercupertinosliderScreen> createState() =>
      _SliderrangeslidercupertinosliderScreenState();
}

class _SliderrangeslidercupertinosliderScreenState
    extends State<SliderrangeslidercupertinosliderScreen> {
  double valor = 100;
  var selectedRange = const RangeValues(100, 200);
  double valor2 = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            const FittedBox(child: Text('Slider RangeSlider CupertinoSlider')),
        centerTitle: true,
      ),
      body: Column(
        children: [
          //---------- Slider ----------
          const SizedBox(
            height: 40,
          ),
          const Text("Slider",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold)),
          Slider(
            min: 100,
            max: 200,
            label: "$valor",
            divisions: 10,
            value: valor,
            onChanged: (value) {
              valor = value;
              setState(() {});
            },
          ),
          const SizedBox(
            height: 10,
          ),
          Text("El valor es: $valor"),
          const Divider(
            thickness: 2,
            color: Colors.purple,
          ),
          //---------- RangeSlider ----------
          const SizedBox(
            height: 40,
          ),
          const Text("RangeSlider",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold)),
          RangeSlider(
            min: 100,
            max: 200,
            divisions: 10,
            labels:
                RangeLabels("${selectedRange.start}", "${selectedRange.end}"),
            values: selectedRange,
            onChanged: (RangeValues value) {
              selectedRange = value;
              setState(() {});
            },
          ),
          const SizedBox(
            height: 10,
          ),
          Text("El valor mínimo es: ${selectedRange.start}"),
          Text("El valor máximo es: ${selectedRange.end}"),
          const Divider(
            thickness: 2,
            color: Colors.purple,
          ),
          //---------- CupertinoSlider ----------
          const SizedBox(
            height: 40,
          ),
          const Text("CupertinoSlider",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold)),
          CupertinoSlider(
            min: 100,
            max: 200,
            divisions: 10,
            value: valor2,
            onChanged: (value) {
              valor2 = value;
              setState(() {});
            },
          ),
          const SizedBox(
            height: 10,
          ),
          Text("El valor es: $valor2"),
          const Divider(
            thickness: 2,
            color: Colors.purple,
          ),
          //---------- Slider.adaptive ----------
          const SizedBox(
            height: 40,
          ),
          const Text("Slider.adaptive",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold)),
          Slider.adaptive(
            min: 100,
            max: 200,
            label: "$valor",
            divisions: 10,
            value: valor,
            onChanged: (value) {
              valor = value;
              setState(() {});
            },
          ),
          const SizedBox(
            height: 10,
          ),
          Text("El valor es: $valor"),
          const Divider(
            thickness: 2,
            color: Colors.purple,
          ),
        ],
      ),
    );
  }
}
