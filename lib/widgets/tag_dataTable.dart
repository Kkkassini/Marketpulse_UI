import 'package:flutter/material.dart';

class TagsDataTable extends StatefulWidget {
  @override
  _TagsDataTable createState() => _TagsDataTable();
}

/// Hard coded data to replace
class _TagsDataTable extends State<TagsDataTable> {
  final hardData = [
    new TagData("IT TERMS", 1290, "23/01/20"),
    new TagData("IT TERMS", 1290, "23/01/20"),
    new TagData("IT TERMS", 1290, "23/01/20"),
    new TagData("IT TERMS", 1290, "23/01/20"),
    new TagData("IT TERMS", 1290, "23/01/20"),
    new TagData("IT TERMS", 1290, "23/01/20"),
    new TagData("IT TERMS", 1290, "23/01/20"),
  ];

  String dropdownValue = 'IT TERMS';

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
                        Text("TAGS",
                            style: TextStyle(fontFamily: 'Ubuntu', fontSize: 22, fontWeight: FontWeight.w700  )),
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
                            items: <String>['IT TERMS', 'Undefined 1', 'Undefined 2', 'Undefined 3']
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

/// Class to display data
class TagData {
  final String _type;
  final int _content;
  final String _date;

  String get date => _date;

  String get type => _type;

  int get content => _content;

  TagData(this._type, this._content, this._date);
}
