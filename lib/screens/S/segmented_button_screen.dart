import 'package:flutter/material.dart';

enum Sizes { extraSmall, small, medium, large, extraLarge }

class SegmentedButtonScreen extends StatefulWidget {
  const SegmentedButtonScreen({Key? key}) : super(key: key);

  @override
  State<SegmentedButtonScreen> createState() => _SegmentedButtonScreenState();
}

class _SegmentedButtonScreenState extends State<SegmentedButtonScreen> {
  Set<Sizes> selection = <Sizes>{};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text('SegmentedButton'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SegmentedButton<Sizes>(
                style: ButtonStyle(
                    // backgroundColor: MaterialStateProperty.all(
                    //   Colors.amber,
                    // ),
                    // shadowColor: MaterialStateProperty.all(
                    //   Colors.blue,
                    // ),
                    // surfaceTintColor: MaterialStateProperty.all(
                    //   Colors.red,
                    // ),
                    ),
                showSelectedIcon: false,
                segments: const <ButtonSegment<Sizes>>[
                  ButtonSegment<Sizes>(
                      value: Sizes.extraSmall, label: Text('XS')),
                  ButtonSegment<Sizes>(value: Sizes.small, label: Text('S')),
                  ButtonSegment<Sizes>(value: Sizes.medium, label: Text('M')),
                  ButtonSegment<Sizes>(value: Sizes.large, label: Text('L')),
                  ButtonSegment<Sizes>(
                      value: Sizes.extraLarge, label: Text('XL')),
                ],
                selected: selection,
                onSelectionChanged: (Set<Sizes> newSelection) {
                  setState(() {
                    selection = newSelection;
                  });
                },
                multiSelectionEnabled: true,
                emptySelectionAllowed: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
