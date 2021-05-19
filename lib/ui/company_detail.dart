import 'dart:html';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:marketpulse_ui/model/detail_data.dart';
import 'package:marketpulse_ui/provider/ChangeThemeProvider.dart';
import 'package:marketpulse_ui/widgets/datatable_industry_proto.dart';
import 'package:marketpulse_ui/widgets/horizontal_bar.dart';
import 'package:provider/provider.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'dart:ui' as ui;

class CompanyDetailPage extends StatefulWidget {
  final Function onClick;


  CompanyDetailPage(this.onClick);

  @override
  _CompanyDetailState createState() => _CompanyDetailState();
}

class _CompanyDetailState extends State<CompanyDetailPage> {

  Map testData = map;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 50,vertical: 20),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _title(),
            SizedBox(height: 10,),
            Divider(height: 1,),
            SizedBox(height: 20,),
            _dataList(),
            SizedBox(height: 20,),
            _lineChart(),
            _dataStatistics()
          ],
        ),
      ),
    );
  }

  Widget _title(){
    return Container(
      height: 50,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          GestureDetector(
            onTap: ()=>widget.onClick(),
            child: Text(testData["company"],style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w700
            ),),
          ),
          SizedBox(width: 10,),
          Text("COMPANY",style: TextStyle(
              fontSize: 10,
              color: Colors.blue,
              decoration: TextDecoration.underline,
          ),)
        ],
      ),
    );
  }
  Widget _dataList(){
    return Container(
      height: 100,
      child: Row(
        children: [
          Expanded(child: _dataCard(0),flex: 1,),
          Expanded(child: _dataCard(1),flex: 1,),
          Expanded(child: _dataCard(2),flex: 1,),
          Expanded(child: _dataCard(3),flex: 1,),
        ],
      )
    );
  }

  bool showAvg = false;
  Widget _lineChart(){
    return Consumer<ChangeThemeProvider>(
      builder: (ctx,change,_){
        return Container(
          child: Row(
            children: [
              Expanded(flex:3,child:Row(
                children: [
                  Expanded(child: Container(decoration:BoxDecoration(
                    color: change.widgetBgValue
                  ),height:300,child: HorizontalBarLabelChart(
                      _createLeftData(),
                    animate: true,
                  )),flex: 2,),
                  SizedBox(width: 10,),
                  Expanded(child: Container(
                    height: 300,
                    child: Row(
                      children: [
                        Expanded(
                          child: AspectRatio(
                            aspectRatio: 2,
                            child: Container(
                              decoration: BoxDecoration(
                                color: change.widgetBgValue
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(right: 18.0, left: 12.0, top: 24, bottom: 12),
                                child: getLineChart()
                                // LineChart(
                                //   showAvg ? avgData() : mainData(),
                                // ),
                              ),
                            ),
                          ),
                        ),

                      ],

                    ),
                  ),flex: 3,)
                ],
              ),),
              SizedBox(width: 10,),
              Expanded(child: Container(decoration:BoxDecoration(
                  color: change.widgetBgValue
              ),height:300,child: HorizontalBarLabelChart(
                _createRightData(),
                animate: true,
              )),flex: 1,),
            ],
          ),
        );
      },
    );
  }
  Widget _dataStatistics(){
    return TableList();
  }


  Map lineMap = {
    "dates": ['2020-05-17', '2020-05-24', '2020-05-31', '2020-06-07', '2020-06-14', '2020-06-21', '2020-06-28', '2020-07-05', '2020-07-12', '2020-07-19', '2020-07-26', '2020-08-02', '2020-08-09', '2020-08-16', '2020-08-23', '2020-08-30', '2020-09-06', '2020-09-13', '2020-09-20', '2020-09-27', '2020-10-04', '2020-10-11', '2020-10-18', '2020-10-25', '2020-11-01', '2020-11-08', '2020-11-15', '2020-11-22', '2020-11-29', '2020-12-06', '2020-12-13', '2020-12-20', '2020-12-27', '2021-01-03', '2021-01-10', '2021-01-17', '2021-01-24', '2021-01-31', '2021-02-07', '2021-02-14', '2021-02-21', '2021-02-28', '2021-03-07', '2021-03-14', '2021-03-21', '2021-03-28', '2021-04-04', '2021-04-11', '2021-04-18', '2021-04-25', '2021-05-02', '2021-05-09'],
    "value": {"bitcoin":  [21, 18, 19, 17, 16, 14, 15, 14, 17, 14, 24, 22, 20, 19, 16, 17, 16, 14, 14, 13, 13, 14, 19, 20, 22, 22, 32, 36, 30, 24, 39, 40, 62, 100, 95, 62, 58, 52, 87, 82, 91, 60, 61, 61, 54, 50, 47, 62, 78, 58, 49, 67],
      "dogecoin": [3, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 2, 3, 6, 3, 2, 52, 39, 45, 20, 12, 8, 9, 7, 5, 6, 6, 68, 67, 29, 88, 100]
    }
  };


  Widget getLineChart(){
    List date = lineMap["dates"];
    List bitcoin = lineMap["value"]["bitcoin"];
    List dogecoin = lineMap["value"]["dogecoin"];
    List<Line_chart_data> data1 = [];
    List<Line_chart_data> data2 = [];
    for(int i = 0;i<dogecoin.length;i++){
      data1.add(Line_chart_data(DateTime.parse(date[i]), bitcoin[i]??0));
      data2.add(Line_chart_data(DateTime.parse(date[i]), dogecoin[i]??0));
    }
    var seriesList = [
    charts.Series<Line_chart_data, DateTime>(
      id: 'bitcoin',
      colorFn: (_, __) => charts.ColorUtil.fromDartColor(Colors.red),
      domainFn: (Line_chart_data sales, _) => sales.date,
      measureFn: (Line_chart_data sales, _) => sales.price,
      // dashPatternFn: (_, __) => [8, 2, 4, 2],
      data: data1,
    ),
      charts.Series<Line_chart_data, DateTime>(
        id: 'dogecoin',
        colorFn: (_, __) => charts.ColorUtil.fromDartColor(Colors.green),
        domainFn: (Line_chart_data sales, _) => sales.date,
        measureFn: (Line_chart_data sales, _) => sales.price,
        // dashPatternFn: (_, __) => [8, 2, 4, 2],
        data: data2,
      ),
    ];

    print("${date.length}=======${bitcoin.length}=======${dogecoin.length}");
    return charts.TimeSeriesChart(seriesList, animate: true);
  }



  List<charts.Series<EmergingTopics, String>> _createLeftData() {
    final List<EmergingTopics> data = [];
    testData["emerging_topics"]?.forEach((key,value)=> data.add(EmergingTopics(key,value)));

    return [
      new charts.Series<EmergingTopics, String>(
          id: 'topic',
          domainFn: (EmergingTopics topic, _) => topic.term,
          measureFn: (EmergingTopics topic, _) => topic.amount,
          data: data,
          // Set a label accessor to control the text of the bar label.
          labelAccessorFn: (EmergingTopics topic, _) =>
          '${topic.term}: ${topic.amount.toString()}')
    ];
  }

  List<charts.Series<EmergingTopics, String>> _createRightData() {
    final List<EmergingTopics> data = [];
    testData["most_used_itterms"]?.forEach((key,value)=> data.add(EmergingTopics(key,value)));

    return [
      new charts.Series<EmergingTopics, String>(
          id: 'topic',
          domainFn: (EmergingTopics topic, _) => topic.term,
          measureFn: (EmergingTopics topic, _) => topic.amount,
          data: data,
          // Set a label accessor to control the text of the bar label.
          labelAccessorFn: (EmergingTopics topic, _) =>
          '${topic.term}: ${topic.amount.toString()}')
    ];
  }




  Widget _dataCard(index){
    return Card(
      child: Consumer<ChangeThemeProvider>(
        builder: (ctx,change,_){
          return Container(
            decoration: BoxDecoration(
              color: change.colorValue
            ),
            padding: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(_getText1(index),style: TextStyle(fontSize: 14),),
                    SizedBox(height: 10,),
                    Text(_getText2(index),style: TextStyle(fontSize: 18),)
                  ],
                ),
                Expanded(child: SizedBox()),
                Icon(Icons.access_alarm,color: Colors.blue,)
              ],
            ),
          );
        },
      ),
    );
  }



  String _getText1(int index){
    switch(index){
      case 0:
        return "Turnover";
        break;
      case 1:
        return "Client done deal value";
        break;
      case 2:
        return "Other KPI";
        break;
      case 3:
        return "KPI";
        break;
      default:
        return "";
    }
  }

  String _getText2(int index){
    switch(index){
      case 0:
        return "${testData["turnover"]?.toString()} \$";
        break;
      case 1:
        return "${testData["client_done_deal_value"]?.toString()} \$";
        break;
      case 2:
        return testData["other_kpi"]?.toString();
        break;
      case 3:
        return testData["kpi"]?.toString();
        break;
      default:
        return "";
    }
  }



  LineChartData mainData() {
    return LineChartData(
      gridData: FlGridData(
        show: true,
        drawVerticalLine: true,
        getDrawingHorizontalLine: (value) {
          return FlLine(
            color: const Color(0xff37434d),
            strokeWidth: 1,
          );
        },
        getDrawingVerticalLine: (value) {
          return FlLine(
            color: const Color(0xff37434d),
            strokeWidth: 1,
          );
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        bottomTitles: SideTitles(
          showTitles: true,
          reservedSize: 22,
          getTextStyles: (value) =>
          const TextStyle(color: Color(0xff68737d), fontWeight: FontWeight.bold, fontSize: 16),
          getTitles: (value) {
            switch (value.toInt()) {
              case 2:
                return 'MAR';
              case 5:
                return 'JUN';
              case 8:
                return 'SEP';
            }
            return '';
          },
          margin: 8,
        ),
        leftTitles: SideTitles(
          showTitles: true,
          getTextStyles: (value) => const TextStyle(
            color: Color(0xff67727d),
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
          getTitles: (value) {
            switch (value.toInt()) {
              case 1:
                return '10k';
              case 3:
                return '30k';
              case 5:
                return '50k';
            }
            return '';
          },
          reservedSize: 28,
          margin: 12,
        ),
      ),
      borderData:
      FlBorderData(show: true, border: Border.all(color: const Color(0xff37434d), width: 1)),
      minX: 0,
      maxX: 11,
      minY: 0,
      maxY: 6,
      lineBarsData: [
        LineChartBarData(
          spots: [
            FlSpot(0, 3),
            FlSpot(2.6, 2),
            FlSpot(4.9, 5),
            FlSpot(6.8, 3.1),
            FlSpot(8, 4),
            FlSpot(9.5, 3),
            FlSpot(11, 4),
          ],
          isCurved: true,
          colors: gradientColors,
          barWidth: 5,
          isStrokeCapRound: true,
          dotData: FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            show: true,
            colors: gradientColors.map((color) => color.withOpacity(0.3)).toList(),
          ),
        ),
      ],
    );
  }

  LineChartData avgData() {
    return LineChartData(
      lineTouchData: LineTouchData(enabled: false),
      gridData: FlGridData(
        show: true,
        drawHorizontalLine: true,
        getDrawingVerticalLine: (value) {
          return FlLine(
            color: const Color(0xff37434d),
            strokeWidth: 1,
          );
        },
        getDrawingHorizontalLine: (value) {
          return FlLine(
            color: const Color(0xff37434d),
            strokeWidth: 1,
          );
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        bottomTitles: SideTitles(
          showTitles: true,
          reservedSize: 22,
          getTextStyles: (value) =>
          const TextStyle(color: Color(0xff68737d), fontWeight: FontWeight.bold, fontSize: 16),
          getTitles: (value) {
            switch (value.toInt()) {
              case 2:
                return 'MAR';
              case 5:
                return 'JUN';
              case 8:
                return 'SEP';
            }
            return '';
          },
          margin: 8,
        ),
        leftTitles: SideTitles(
          showTitles: true,
          getTextStyles: (value) => const TextStyle(
            color: Color(0xff67727d),
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
          getTitles: (value) {
            switch (value.toInt()) {
              case 1:
                return '10k';
              case 3:
                return '30k';
              case 5:
                return '50k';
            }
            return '';
          },
          reservedSize: 28,
          margin: 12,
        ),
      ),
      borderData:
      FlBorderData(show: true, border: Border.all(color: const Color(0xff37434d), width: 1)),
      minX: 0,
      maxX: 11,
      minY: 0,
      maxY: 6,
      lineBarsData: [
        LineChartBarData(
          spots: [
            FlSpot(0, 3.44),
            FlSpot(2.6, 3.44),
            FlSpot(4.9, 3.44),
            FlSpot(6.8, 3.44),
            FlSpot(8, 3.44),
            FlSpot(9.5, 3.44),
            FlSpot(11, 3.44),
          ],
          isCurved: true,
          colors: [
            ColorTween(begin: gradientColors[0], end: gradientColors[1]).lerp(0.2),
            ColorTween(begin: gradientColors[0], end: gradientColors[1]).lerp(0.2),
          ],
          barWidth: 5,
          isStrokeCapRound: true,
          dotData: FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(show: true, colors: [
            ColorTween(begin: gradientColors[0], end: gradientColors[1]).lerp(0.2).withOpacity(0.1),
            ColorTween(begin: gradientColors[0], end: gradientColors[1]).lerp(0.2).withOpacity(0.1),
          ]),
        ),
      ],
    );
  }
  List<Color> gradientColors = [
    const Color(0xff23b6e6),
    const Color(0xff02d39a),
  ];




}
class Line_chart_data{
  final DateTime date;
  final int price;

  Line_chart_data(this.date, this.price);
}


