import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class FlutterSlidableScreen extends StatelessWidget {
  const FlutterSlidableScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FlutterSlidable'),
        centerTitle: true,
      ),
      body: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: 20,
        itemBuilder: (BuildContext context, int index) {
          return const _ListItem(
            color: Colors.orange,
          );
        },
      ),
    );
  }
}

//-------------------------------------------------------
class _ListItem extends StatelessWidget {
  final Color color;
  const _ListItem({
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 60,
        color: Colors.amber,
        child: Slidable(
          startActionPane: ActionPane(motion: const BehindMotion(), children: [
            SlidableAction(
              onPressed: (context) {},
              backgroundColor: Colors.red,
              foregroundColor: Colors.white,
              icon: Icons.delete_outline,
              label: "Borrar",
            ),
            SlidableAction(
              onPressed: (context) {},
              backgroundColor: Colors.green,
              foregroundColor: Colors.white,
              icon: Icons.edit_outlined,
              label: "Editar",
            ),
            SlidableAction(
              onPressed: (context) {},
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
              icon: Icons.share_outlined,
              label: "Compartir",
            ),
          ]),
          endActionPane: const ActionPane(
            motion: ScrollMotion(),
            children: [
              SlidableAction(
                // An action can be bigger than the others.
                flex: 2,
                onPressed: null,
                backgroundColor: Color(0xFF7BC043),
                foregroundColor: Colors.white,
                icon: Icons.archive,
                label: 'Archivar',
              ),
              SlidableAction(
                onPressed: null,
                flex: 2,
                backgroundColor: Color(0xFF0392CF),
                foregroundColor: Colors.white,
                icon: Icons.save,
                label: 'Grabar',
              ),
            ],
          ),
          child: const ListTile(
            leading: Icon(Icons.home),
            title: Text("Opción"),
          ),
        ),
      ),
    );
  }
}
