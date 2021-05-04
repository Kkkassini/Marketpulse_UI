import 'package:flutter/material.dart';

class MetaDataTable extends StatefulWidget {
  @override
  _MetaDataTable createState() => _MetaDataTable();
}

/// Hard coded data to replace
class _MetaDataTable extends State<MetaDataTable> {
  final hardData = [
    new MetaData("Date", 1290, "23/01/20"),
    new MetaData("Date", 1290, "23/01/20"),
    new MetaData("Date", 1290, "23/01/20"),
    new MetaData("Date", 1290, "23/01/20"),
    new MetaData("Date", 1290, "23/01/20"),
    new MetaData("Date", 1290, "23/01/20"),
    new MetaData("Date", 1290, "23/01/20"),
  ];

  String dropdownValue = 'Date';

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: IntrinsicWidth(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("META",
                            style: TextStyle(fontFamily: 'Ubuntu', fontSize: 22, fontWeight: FontWeight.w700)),
                        Text("Select which meta's content to display",
                            style: TextStyle(fontFamily: 'Ubuntu', fontSize: 14,color: Colors.grey)),
                      ])),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ConstrainedBox(
                    constraints:
                    const BoxConstraints(minWidth: double.infinity),
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all()),
                      child: DropdownButtonHideUnderline(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal:8.0),
                          child: DropdownButton<String>(
                            value: dropdownValue,
                            icon: const Icon(Icons.arrow_downward),
                            iconSize: 24,
                            elevation: 16,
                            onChanged: (String newValue) {
                              setState(() {
                                dropdownValue = newValue;
                              });
                            },
                            items: <String>['Date', 'Undefined 1', 'Undefined 2', 'Undefined 3']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                    ),
                  ),
                  ConstrainedBox(
                    constraints:
                    const BoxConstraints(minWidth: double.infinity, maxHeight: 250),
                    child: SingleChildScrollView(
                      child: DataTable(
                        columns: [
                          DataColumn(label: Text(dropdownValue)),
                          DataColumn(label: Text("Content")),
                          DataColumn(label: Text("Date")),
                        ],
                        rows: [
                          for (int index = 0; index < hardData.length; index++)
                            DataRow(
                              cells: [
                                DataCell(Text(hardData[index].type)),
                                DataCell(Text("${hardData[index].content}")),
                                DataCell(Text(hardData[index].date))
                              ],
                            )
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

/// Class to display data to table
class MetaData {
  final String _type;
  final int _content;
  final String _date;

  String get date => _date;

  String get type => _type;

  int get content => _content;

  MetaData(this._type, this._content, this._date);
}
