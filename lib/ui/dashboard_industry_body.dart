import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:marketpulse_ui/provider/ChangeThemeProvider.dart';
import 'package:marketpulse_ui/widgets/chart_goals.dart';
import 'package:marketpulse_ui/widgets/datatable_industry.dart';
import 'package:marketpulse_ui/widgets/details_list.dart';
import 'package:marketpulse_ui/widgets/line_chart.dart';
import 'package:marketpulse_ui/widgets/datatable_industry_proto.dart';
import 'package:marketpulse_ui/widgets/entities_widget.dart';
import 'package:marketpulse_ui/widgets/top_bar.dart';

import '../theme_config.dart';


class DashboardIndustryBody extends StatefulWidget {
  DashboardIndustryBody({Key key}) : super(key: key);

  @override
  _DashboardIndustryBodyState createState() => _DashboardIndustryBodyState();
}
class _DashboardIndustryBodyState extends State<DashboardIndustryBody> {
  Widget _mainContainer() => Container(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 50.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[EntitiesWidget(), DetailsList(), LineChartSample2(),TableList()],
          ),
        ),
      );


  @override
  Widget build(BuildContext context) {
    return
//      ThemeSwitchingArea(child:
      Container(
      //color: Colors.grey[100],
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[Expanded(child: _mainContainer()),

        ],
      ),
//    )
    );
  }
}
