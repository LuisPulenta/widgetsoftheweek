import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';

class ConnectivityScreen extends StatefulWidget {
  const ConnectivityScreen({Key? key}) : super(key: key);

  @override
  State<ConnectivityScreen> createState() => _ConnectivityScreenState();
}

class _ConnectivityScreenState extends State<ConnectivityScreen> {
  ConnectivityResult connection = ConnectivityResult.none;

  @override
  void initState() {
    super.initState();
    getConnection();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Connectivity'),
        centerTitle: true,
      ),
      body: Center(
        child: Text('La conexión es: $connection'),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.refresh),
        onPressed: () {
          getConnection();
          setState(() {});
        },
      ),
    );
  }

  void getConnection() async {
    connection = await Connectivity().checkConnectivity();
    setState(() {});
  }
}
