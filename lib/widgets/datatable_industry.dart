import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class IndustryTableDemo extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          PaginatedDataTable(
            header: Text('Latest Communications in this industry'),
            rowsPerPage: 10,
            columns: [
              DataColumn(label: Text('Object')),
              DataColumn(label: Text('Description')),
              DataColumn(label: Text('Date')),
              DataColumn(label: Text('Type')),
              DataColumn(label: Text('Status')),
            ],
            source: _DataSource(context),
          ),
        ],
      ),
    );
  }
}

class _Row {
  _Row(
      this.valueA,
      this.valueB,
      this.valueC,
      this.valueD,
      this.valueE,
      );

  final String valueA;
  final String valueB;
  final DateTime valueC;
  final String valueD;
  final Icon valueE;


  bool selected = false;
}

class _DataSource extends DataTableSource {
  _DataSource(this.context) {
    _rows = <_Row>[
      _Row('Woman Peacoat', 'Lorem ipsum dolor sit amet Consetetur', DateTime.utc(2021, 2, 12), "RFP", Icon(Icons.add_circle, color: Colors.green)),
      _Row('Woman Peacoat', 'Lorem ipsum dolor sit amet Consetetur', DateTime.utc(2020, 9, 3), "RFP", Icon(Icons.add_circle, color: Colors.green)),
      _Row('Woman Peacoat', 'Lorem ipsum dolor sit amet Consetetur', DateTime.utc(2020, 6, 6), "RFP", Icon(Icons.add_circle, color: Colors.green)),
      _Row('Woman Peacoat', 'Lorem ipsum dolor sit amet Consetetur', DateTime.utc(2018, 4, 8), "RFP", Icon(Icons.add_circle, color: Colors.red)),
      _Row('Woman Peacoat', 'Lorem ipsum dolor sit amet Consetetur', DateTime.utc(2018, 4, 8), "RFP", Icon(Icons.add_circle, color: Colors.red)),
      _Row('Woman Peacoat', 'Lorem ipsum dolor sit amet Consetetur', DateTime.utc(2018, 4, 8), "RFP", Icon(Icons.add_circle, color: Colors.red)),
      _Row('Woman Peacoat', 'Lorem ipsum dolor sit amet Consetetur', DateTime.utc(2018, 4, 8), "RFP", Icon(Icons.add_circle, color: Colors.red)),
      _Row('Woman Peacoat', 'Lorem ipsum dolor sit amet Consetetur', DateTime.utc(2018, 4, 8), "RFP", Icon(Icons.add_circle, color: Colors.red)),
      _Row('Woman Peacoat', 'Lorem ipsum dolor sit amet Consetetur', DateTime.utc(2018, 4, 8), "RFP", Icon(Icons.add_circle, color: Colors.red)),
      _Row('Woman Peacoat', 'Lorem ipsum dolor sit amet Consetetur', DateTime.utc(2018, 4, 8), "RFP", Icon(Icons.add_circle, color: Colors.red)),
      _Row('Woman Peacoat', 'Lorem ipsum dolor sit amet Consetetur', DateTime.utc(2018, 4, 8), "RFP", Icon(Icons.add_circle, color: Colors.red)),
      _Row('Woman Peacoat', 'Lorem ipsum dolor sit amet Consetetur', DateTime.utc(2018, 4, 8), "RFP", Icon(Icons.add_circle, color: Colors.red)),
      _Row('Woman Peacoat', 'Lorem ipsum dolor sit amet Consetetur', DateTime.utc(2018, 4, 8), "RFP", Icon(Icons.add_circle, color: Colors.red)),
      _Row('Woman Peacoat', 'Lorem ipsum dolor sit amet Consetetur', DateTime.utc(2018, 4, 8), "RFP", Icon(Icons.add_circle, color: Colors.red)),
    ];
  }

  final BuildContext context;
  List<_Row> _rows;

  int _selectedCount = 0;

  @override
  DataRow getRow(int index) {
    assert(index >= 0);
    if (index >= _rows.length) return null;
    final row = _rows[index];
    return DataRow.byIndex(
      index: index,
      selected: row.selected,
      onSelectChanged: (value) {
        if (row.selected != value) {
          _selectedCount += value ? 1 : -1;
          assert(_selectedCount >= 0);
          row.selected = value;
          notifyListeners();
        }
      },
      cells: [
        DataCell(Text(row.valueA)),
        DataCell(Text(row.valueB)),
        DataCell(Text(DateFormat('yyyy/MM/dd').format(row.valueC))),
        DataCell(Text(row.valueD)),
        DataCell(row.valueE),
      ],
    );
  }

  @override
  int get rowCount => _rows.length;

  @override
  bool get isRowCountApproximate => false;

  @override
  int get selectedRowCount => _selectedCount;
}
