import 'package:flutter/material.dart';

class DefaultTabControllerTabBarScreen extends StatelessWidget {
  const DefaultTabControllerTabBarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(
                text: "Usuario",
              ),
              Tab(
                text: "Flota",
              ),
              Tab(
                text: "Configuración",
              ),
            ],
          ),
        ),
        body: TabBarView(
          physics: const NeverScrollableScrollPhysics(),
          children: [
            Container(
              color: Colors.blue,
              child: const Center(
                child: Text("Usuario"),
              ),
            ),
            Container(
              color: Colors.red,
              child: const Center(
                child: Text("Flota"),
              ),
            ),
            Container(
              color: Colors.yellow,
              child: const Center(
                child: Text("Configuración"),
              ),
            ),
          ],
        ),
        bottomNavigationBar: const TabBar(
          indicatorColor: Colors.red,
          labelColor: Colors.purple,
          tabs: [
            Padding(
                padding: EdgeInsets.only(top: 12, bottom: 12),
                child: Text('azul')),
            Padding(
                padding: EdgeInsets.only(top: 12, bottom: 12),
                child: Text('rojo')),
            Padding(
                padding: EdgeInsets.only(top: 12, bottom: 12),
                child: Text('amarillo')),
          ],
        ),
      ),
    );
  }
}
