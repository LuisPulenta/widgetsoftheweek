import 'package:flutter/material.dart';

class InsigniasScreen extends StatelessWidget {
  const InsigniasScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Insignias'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Badge(
              label: Text("8",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.bold)),
              child: Icon(Icons.phone, size: 40, color: Colors.green),
            ),
            const Badge(
              label: Text("5",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.bold)),
              child: Icon(Icons.message, size: 40, color: Colors.amber),
              backgroundColor: Colors.blue,
              alignment: AlignmentDirectional.topEnd,
            ),
            Badge(
              label: const Text("5",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.bold)),
              alignment: AlignmentDirectional.topEnd,
              child: Container(
                width: 160,
                height: 60,
                child: const Icon(
                  Icons.business,
                  size: 50,
                  color: Colors.purple,
                ),
              ),
            ),
            const Badge(child: Icon(Icons.business), label: Text('2')),
            const Badge(
                alignment: AlignmentDirectional.bottomEnd,
                label: Text("2"),
                child: Icon(Icons.business)),
            Badge(
                child: IconButton(icon: const Icon(Icons.business), onPressed: () {}),
                label: const Text('2')),
            Badge(
                alignment: AlignmentDirectional.topEnd,
                label: const Text("2"),
                child: Container(width: 200, height: 200, color: Colors.amber)),
          ],
        ),
      ),
    );
  }
}
