import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text('Rafika Ramadhani - 6 SIA 6'),
      ),
      body: ListView(children: <Widget>[
        Center(
            child: Text('Data Mahasiswa',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
        DataTable(
          columns: [
            DataColumn(label: Text('NIRM')),
            DataColumn(label: Text('Nama Mahasiswa')),
            DataColumn(label: Text('Jurusan')),
          ],
          rows: [
            DataRow(cells: [
              DataCell(Text('2018020329')),
              DataCell(Text('Rafika Ramadhani')),
              DataCell(Text('Sistem Informasi')),
            ]),
            DataRow(cells: [
              DataCell(Text('2018020111')),
              DataCell(Text('Seokjin Kim')),
              DataCell(Text('Sastra Korea')),
            ]),
            DataRow(cells: [
              DataCell(Text('2018097222')),
              DataCell(Text('Taehyung Kim')),
              DataCell(Text('Broadcasting')),
            ]),
          ],
        ),
      ]),
    );
  }
}