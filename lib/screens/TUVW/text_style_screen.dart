import 'package:flutter/material.dart';

class TextStyleScreen extends StatelessWidget {
  const TextStyleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TextStyle'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text('color', style: TextStyle(color: Colors.red)),
            const Text('fontSize', style: TextStyle(fontSize: 25)),
            const Text('fontStyle',
                style: TextStyle(fontStyle: FontStyle.italic)),
            const Text('fontWeight',
                style: TextStyle(fontWeight: FontWeight.bold)),
            const Text('letterSpacing', style: TextStyle(letterSpacing: 2)),
            const Text('word Spacing', style: TextStyle(wordSpacing: 3)),
            const Text('backgroundColor',
                style: TextStyle(backgroundColor: Colors.amber)),
            const Text('textBaseline',
                style: TextStyle(textBaseline: TextBaseline.ideographic)),
            const Text('height',
                style: TextStyle(height: 3, backgroundColor: Colors.grey)),
            const Text(
                'overflow overflow overflow overflow overflow overflow overflow overflow',
                style: TextStyle(overflow: TextOverflow.ellipsis)),
            Text('bodyLarge', style: Theme.of(context).textTheme.bodyLarge),
            Text('bodyMedium', style: Theme.of(context).textTheme.bodyMedium),
            Text('bodySmall', style: Theme.of(context).textTheme.bodySmall),
          ],
        ),
      ),
    );
  }
}
