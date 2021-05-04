import 'package:flutter/material.dart';
import 'package:marketpulse_ui/widgets/line_chart_company.dart';
import 'package:marketpulse_ui/widgets/meta_dataTable.dart';
import 'package:marketpulse_ui/widgets/tag_dataTable.dart';

import '../widgets/card_company.dart';

class AnalyseRfpBody extends StatefulWidget {
  AnalyseRfpBody({Key key}) : super(key: key);

  @override
  _AnalyseRfpBody createState() => _AnalyseRfpBody();
}

/// Analyse Body with: a Back button, a Card Company, a line chart, a meta datatable and a tag datatable
class _AnalyseRfpBody extends State<AnalyseRfpBody> {
  Widget _mainContainer() => Container(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 50.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              _button(),
              CardCompany(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(child: LineChartAnalyse()),
                  Expanded(child: MetaDataTable()),
                  Expanded(child: TagsDataTable()),
                ],
              ),
            ],
          ),
        ),
      );

  Widget _button() => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Align(
          alignment: Alignment.centerLeft,
          child: SizedBox(
            width: 65,
            child: TextButton(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                      size: 6,
                    ),
                  ),
                  Text('Back', style: TextStyle(color: Colors.black)),
                ],
              ),
              style: ElevatedButton.styleFrom(
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0),
                ),
                primary: Colors.white60,
              ),
              onPressed: () {
                Navigator.pop(context, true);
              },
            ),
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return
        Container(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Expanded(child: _mainContainer()),
        ],
      ),
    );
  }
}
