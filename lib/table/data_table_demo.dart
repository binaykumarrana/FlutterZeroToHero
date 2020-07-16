import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DataTableDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Data Table"),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: DataTableHome(),
    );
  }
}

class DataTableHome extends StatefulWidget {
  @override
  _DataTableHomeState createState() => _DataTableHomeState();
}

class _DataTableHomeState extends State<DataTableHome> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Center(
            child: Text(
          'Students',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        )),
        DataTable(
          columns: [
            DataColumn(label: Text("RollNo")),
            DataColumn(label: Text("Name")),
            DataColumn(label: Text("Class")),
          ],
          rows: [
            DataRow(
              cells: [
                DataCell(Text('1')),
                DataCell(Text('Arya')),
                DataCell(Text('6')),
              ],
            ),
            DataRow(cells: [
              DataCell(Text('12')),
              DataCell(Text('John')),
              DataCell(Text('9')),
            ]),
            DataRow(cells: [
              DataCell(Text('42')),
              DataCell(Text('Tony')),
              DataCell(Text('8')),
            ]),
          ],
        ),
      ],
    );
  }
}
