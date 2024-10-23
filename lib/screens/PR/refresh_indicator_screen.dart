import 'package:flutter/material.dart';

class RefreshIndicatorScreen extends StatefulWidget {
  const RefreshIndicatorScreen({Key? key}) : super(key: key);

  @override
  State<RefreshIndicatorScreen> createState() => _RefreshIndicatorScreenState();
}

class _RefreshIndicatorScreenState extends State<RefreshIndicatorScreen> {
  List<int> list = List.generate(5, (i) => i);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('RefreshIndicator'),
          centerTitle: true,
        ),
        body: RefreshIndicator(
          onRefresh: onRefresh,
          color: Colors.red,
          backgroundColor: Colors.orange,
          strokeWidth: 5,
          //displacement: 400,
          edgeOffset: 0,
          triggerMode: RefreshIndicatorTriggerMode.anywhere,
          child: ListView.builder(
            itemCount: list.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text('${list[index]}'),
                leading: const Icon(Icons.numbers),
              );
            },
          ),
        ));
  }

//----------------------------------------------------------------------
  Future<void> onRefresh() async {
    await Future.delayed(const Duration(seconds: 2));
    final lastId = list.last;
    list.addAll(
      [1, 2, 3, 4, 5].map((e) => lastId + e),
    );
    setState(() {});
  }
}
