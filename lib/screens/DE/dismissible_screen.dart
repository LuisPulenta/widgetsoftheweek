import 'package:flutter/material.dart';
import 'package:widgetsoftheweek/data/people.dart';

class DismissibleScreen extends StatefulWidget {
  const DismissibleScreen({Key? key}) : super(key: key);

  @override
  State<DismissibleScreen> createState() => _DismissibleScreenState();
}

class _DismissibleScreenState extends State<DismissibleScreen> {
//-------------------------------------------------------------------
//---------------------- Inicialización de variables  ---------------
//-------------------------------------------------------------------

  List<Map<String, dynamic>> contacts = [...people];

//-------------------------------------------------------------------
//---------------------- Pantalla -----------------------------------
//-------------------------------------------------------------------

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dismissible'),
        centerTitle: true,
      ),
      body: ListView.separated(
        itemCount: contacts.length,
        separatorBuilder: (_, __) => const Divider(
          color: Colors.black26,
          height: 2,
        ),
        itemBuilder: (_, int index) => ListItem(
          contact: contacts[index],
          index: index,
          onDeleteContact: onDeleteContact,
          onTooglePinned: onTooglePinned,
        ),
      ),
    );
  }

//-------------------------------------------------------------------
//---------------------- onTooglePinned -----------------------------
//-------------------------------------------------------------------

  void onTooglePinned(int index) {
    setState(() {
      contacts[index]['pinned'] = !contacts[index]['pinned'];
    });
  }

//-------------------------------------------------------------------
//---------------------- onDeleteContact ----------------------------
//-------------------------------------------------------------------

  void onDeleteContact(int index) {
    setState(() {
      contacts.removeAt(index);
    });
  }
}

// ****************************** FIN DE LA CLASE *******************

//-------------------------------------------------------------------
//---------------------- class ListItem -----------------------------
//-------------------------------------------------------------------
class ListItem extends StatelessWidget {
  const ListItem(
      {Key? key,
      required this.contact,
      required this.index,
      required this.onTooglePinned,
      required this.onDeleteContact})
      : super(key: key);

  final Map<String, dynamic> contact;
  final int index;
  final Function onTooglePinned;
  final Function onDeleteContact;

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: UniqueKey(),
      background: Container(
        color: Colors.red[400],
        child: const Icon(
          Icons.delete_outline_rounded,
          color: Colors.white,
        ),
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.only(left: 10),
      ),
      secondaryBackground: Container(
        color: Colors.blue[400],
        child: const Icon(
          Icons.push_pin_outlined,
          color: Colors.white,
        ),
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.only(right: 10),
      ),
      onDismissed: (direction) {
        if (direction == DismissDirection.startToEnd) {
          onDeleteContact(index);
        }
      },
      confirmDismiss: (direction) async {
        //Pinned o Toggle
        if (direction == DismissDirection.endToStart) {
          onTooglePinned(index);
          return false;
        }
        return true;
      },
      child: ListTile(
        leading: Icon(contact['pinned']
            ? Icons.push_pin_outlined
            : Icons.circle_outlined),
        title: Text('${contact['first_name']} ${contact['last_name']}'),
        subtitle: Text(contact['phone']),
        //dense: true,
      ),
    );
  }
}
