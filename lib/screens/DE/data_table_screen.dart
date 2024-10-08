import 'package:flutter/material.dart';

class DataTableScreen extends StatefulWidget {
  const DataTableScreen({Key? key}) : super(key: key);

  @override
  State<DataTableScreen> createState() => _DataTableScreenState();
}

class _DataTableScreenState extends State<DataTableScreen> {
  bool _sortNameAsc = true;
  bool _sortAgeAsc = true;
  bool _sortHeightAsc = true;
  bool _sortAsc = true;
  int _sortColumnIndex = 0;
  List<Person> _persons = [];

  @override
  void initState() {
    super.initState();
    _persons = [
      Person(
        name: 'George',
        age: 18,
        height: 173,
      ),
      Person(
        name: 'Dave',
        age: 21,
        height: 183,
      ),
      Person(
        name: 'Sam',
        age: 55,
        height: 170,
      ),
      Person(
        name: 'Luis',
        age: 59,
        height: 174,
      ),
      Person(
        name: 'Pablo',
        age: 46,
        height: 170,
      ),
      Person(
        name: 'Messi',
        age: 34,
        height: 160,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    //.....................................................
    var myColumns = [
      DataColumn(
        label: const Text('name'),
        onSort: (columnIndex, sortAscending) {
          setState(() {
            if (columnIndex == _sortColumnIndex) {
              _sortAsc = _sortNameAsc = sortAscending;
            } else {
              _sortColumnIndex = columnIndex;
              _sortAsc = _sortNameAsc;
            }
            _persons.sort((a, b) => a.name.compareTo(b.name));
            if (!_sortAsc) {
              _persons = _persons.reversed.toList();
            }
          });
        },
      ),
      DataColumn(
        label: const Text('age'),
        onSort: (columnIndex, sortAscending) {
          setState(() {
            if (columnIndex == _sortColumnIndex) {
              _sortAsc = _sortAgeAsc = sortAscending;
            } else {
              _sortColumnIndex = columnIndex;
              _sortAsc = _sortAgeAsc;
            }
            _persons.sort((a, b) => a.age.compareTo(b.age));
            if (!_sortAsc) {
              _persons = _persons.reversed.toList();
            }
          });
        },
      ),
      DataColumn(
        label: const Text('Hight'),
        onSort: (columnIndex, sortAscending) {
          setState(() {
            if (columnIndex == _sortColumnIndex) {
              _sortAsc = _sortHeightAsc = sortAscending;
            } else {
              _sortColumnIndex = columnIndex;
              _sortAsc = _sortHeightAsc;
            }
            _persons.sort((a, b) => a.height.compareTo(b.height));
            if (!_sortAsc) {
              _persons = _persons.reversed.toList();
            }
          });
        },
      ),
    ];

    //.....................................................
    var myRows = _persons.map((person) {
      return DataRow(cells: [
        DataCell(Text(person.name)),
        DataCell(Text('${person.age}')),
        DataCell(Text('${person.height} cm')),
      ]);
    });

    //.....................................................
    return Scaffold(
      appBar: AppBar(
        title: const Text('DataTable'),
        centerTitle: true,
      ),
      body: Center(
        child: DataTable(
          columns: myColumns,
          rows: myRows.toList(),
          sortColumnIndex: _sortColumnIndex,
          sortAscending: _sortAsc,
        ),
      ),
    );
  }
}

//----------------------------------------------------------------------------
class Person {
  String name;
  int age;
  num height;
  Person({required this.name, required this.age, required this.height});
}
