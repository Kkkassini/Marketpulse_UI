import 'package:flutter/material.dart';

import 'horizontal_bar.dart';

class LineChartAnalyse extends StatefulWidget {
  @override
  _LineChartAnalyse createState() => _LineChartAnalyse();
}

class _LineChartAnalyse extends State<LineChartAnalyse> {
  List<Color> gradientColors = [
    const Color(0xff23b6e6),
    const Color(0xff02d39a),
  ];

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        height: 375,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top:20.0, left:15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("TOP 10 CONTENT",
                      style: TextStyle(fontFamily: 'Ubuntu', fontSize: 22, fontWeight: FontWeight.w700)),
                  Text("Most relevant key words",
                      style: TextStyle(
                          fontFamily: 'Ubuntu',
                          fontSize: 14,
                          color: Colors.grey)),
                ],
              ),
            ),
            Container(
              child: Row(
                children: <Widget>[
                  Flexible(
                      flex: 2,
                      child: Container(
                        height: 300,
                        child: HorizontalBarLabelChart.withSampleData(),
                      )),
                  SizedBox(
                    width: 20,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
