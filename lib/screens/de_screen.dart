import 'package:flutter/material.dart';
import 'package:widgetsoftheweek/screens/DE/screens.dart';
import 'package:widgetsoftheweek/widgets/widgets.dart';

class DEScreen extends StatelessWidget {
  const DEScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double anchoBoton = MediaQuery.of(context).size.width;
    double altoBoton = 50;
    Color color = const Color.fromARGB(255, 155, 54, 244);
    return Scaffold(
        backgroundColor: Colors.cyan,
        appBar: AppBar(
          title: const Text('D-E'),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 155, 54, 244),
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Boton(
                titulo: "DataTable",
                screen: const DataTableScreen(),
                ancho: anchoBoton,
                alto: altoBoton,
                color: color,
                ok: true,
              ),
              Boton(
                titulo: "DefaultTabController & TabBar",
                screen: const DefaultTabControllerTabBarScreen(),
                ancho: anchoBoton,
                alto: altoBoton,
                color: color,
                ok: true,
              ),
              Boton(
                titulo: "Device_info",
                screen: const DeviceInfoScreen(),
                ancho: anchoBoton,
                alto: altoBoton,
                color: color,
                ok: true,
              ),
              Boton(
                titulo: "Dismissible",
                screen: const DismissibleScreen(),
                ancho: anchoBoton,
                alto: altoBoton,
                color: color,
                ok: true,
              ),
              Boton(
                titulo: "Divider",
                screen: const DividerScreen(),
                ancho: anchoBoton,
                alto: altoBoton,
                color: color,
                ok: true,
              ),
              Boton(
                  titulo: "Draggable",
                  screen: Container(),
                  ancho: anchoBoton,
                  alto: altoBoton,
                  color: color),
              Boton(
                titulo: "DraggableScrollableSheet",
                screen: DraggableScrollableSheetsScreen(),
                ancho: anchoBoton,
                alto: altoBoton,
                color: color,
                ok: true,
              ),
              Boton(
                titulo: "Drawer",
                screen: DrawerScreen(),
                ancho: anchoBoton,
                alto: altoBoton,
                color: color,
                ok: true,
              ),
              Boton(
                titulo: "DropDownButton",
                screen: const DropDownButtonScreen(),
                ancho: anchoBoton,
                alto: altoBoton,
                color: color,
                ok: true,
              ),
              const Divider(
                color: Colors.white,
                thickness: 4,
                height: 10,
              ),
              Boton(
                titulo: "Expanded",
                screen: const ExpandedScreen(),
                ancho: anchoBoton,
                alto: altoBoton,
                color: color,
                ok: true,
              ),
              Boton(
                titulo: "ExpansionPanel",
                screen: const ExpansionPanelScreen(
                  key: null,
                ),
                ancho: anchoBoton,
                alto: altoBoton,
                color: color,
                ok: true,
              ),
            ],
          ),
        ));
  }
}
