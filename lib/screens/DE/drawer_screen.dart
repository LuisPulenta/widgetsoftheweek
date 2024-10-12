import 'package:flutter/material.dart';

class DrawerScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  DrawerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: const Text('Drawer'),
        centerTitle: true,
      ),
      body: const Center(
        child: Center(child: Text('DrawerScreen')),
      ),
      drawer: Drawer(
        child: ListView(children: const [
          DrawerHeader(
            child: Center(
              child: Text("DrawerHeader",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 28,
                      fontWeight: FontWeight.bold)),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Inicio"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Usuario"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Configuración"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            leading: Icon(Icons.map),
            title: Text("Mapa"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          Divider(
            color: Colors.black,
            thickness: 2,
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text("Salir"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
        ]),
      ),
      endDrawer: Drawer(
        child: ListView(children: const [
          DrawerHeader(
            child: Center(
              child: Text("DrawerHeader",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 28,
                      fontWeight: FontWeight.bold)),
            ),
          ),
          ListTile(
            leading: Icon(Icons.car_crash),
            title: Text("Vehículo"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          Divider(
            color: Colors.black,
            thickness: 2,
          ),
          ListTile(
            leading: Icon(Icons.search),
            title: Text("Buscar"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
        ]),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton:
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        FloatingActionButton(
          heroTag: 1,
          onPressed: () {
            _scaffoldKey.currentState!.openDrawer();
          },
          child: const Icon(Icons.fork_left),
        ),
        FloatingActionButton(
          heroTag: 2,
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Icon(Icons.close),
        ),
        FloatingActionButton(
          heroTag: 3,
          onPressed: () {
            _scaffoldKey.currentState!.openEndDrawer();
          },
          child: const Icon(Icons.fork_right),
        ),
      ]),
    );
  }
}
