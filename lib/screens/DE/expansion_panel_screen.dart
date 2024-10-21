import 'package:flutter/material.dart';

class ExpansionPanelScreen extends StatefulWidget {
  const ExpansionPanelScreen({Key? key}) : super(key: key);

  @override
  State<ExpansionPanelScreen> createState() => _ExpansionPanelScreenState();
}

class _ExpansionPanelScreenState extends State<ExpansionPanelScreen> {
  final List<Item> _books = generateItems(30);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ExpansionPanel'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: _buildPanel(),
        ),
      ),
    );
  }

//---------------------------------------------------------------

  Widget _buildPanel() {
    return ExpansionPanelList(
      animationDuration: Duration(milliseconds: 1000),
      dividerColor: Colors.purple,
      elevation: 1,
      expandedHeaderPadding: EdgeInsets.all(8),
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          _books[index].isExpanded = !isExpanded;
        });
      },
      children: _books.map<ExpansionPanel>((Item item) {
        return ExpansionPanel(
          canTapOnHeader: true,
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
              title: Text(item.headerValue),
            );
          },
          body: ListTile(
            title: Text(item.expandedValue),
          ),
          isExpanded: item.isExpanded,
        );
      }).toList(),
    );
  }
}

//---------------------------------------------------------------
class Item {
  Item({
    required this.expandedValue,
    required this.headerValue,
    this.isExpanded = false,
  });

  String expandedValue;
  String headerValue;
  bool isExpanded;
}

//---------------------------------------------------------------
List<Item> generateItems(int numberOfItems) {
  return List.generate(numberOfItems, (int index) {
    return Item(
      headerValue: 'Book $index',
      expandedValue: 'Details for Book $index goes here',
    );
  });
}
