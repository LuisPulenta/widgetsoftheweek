import 'package:flutter/material.dart';

class DraggableScrollableSheetsScreen extends StatelessWidget {
  const DraggableScrollableSheetsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DraggableScrollableSheets'),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Container(
            color: Colors.amber[100],
            child: const Center(
              child: Text("Home"),
            ),
          ),
          DraggableScrollableSheet(
              initialChildSize: 0.4,
              minChildSize: 0.2,
              maxChildSize: 0.6,
              builder:
                  (BuildContext context, ScrollController scrollcontroller) {
                return Container(
                  decoration: const BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    ),
                  ),
                  child: ListView.builder(
                      controller: scrollcontroller,
                      itemCount: 25,
                      itemBuilder: (BuildContext context, int index) {
                        return ListTile(
                            title: Text(
                          'Item $index',
                        ));
                      }),
                );
              }),
        ],
      ),
    );
  }
}
