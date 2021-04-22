import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:marketpulse_ui/provider/ChangeThemeProvider.dart';
import 'package:marketpulse_ui/ui/dashboard_industry_body.dart';
import 'package:provider/provider.dart';
import 'package:marketpulse_ui/provider/ChangeThemeProvider.dart';

import '../theme_config.dart';

class DashboardIndustry extends StatefulWidget {
  DashboardIndustry({Key key}) : super(key: key);

  @override
  _DashboardIndustryState createState() => _DashboardIndustryState();
}
class _DashboardIndustryState extends State<DashboardIndustry> {
  int _counter = 0;
  bool status = false;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final shortestSide = MediaQuery.of(context).size.shortestSide;
    // The number 600 here is a common breakpoint for a typical 7-inch tablet.
    final isTablet = shortestSide > 600;
    if (isTablet) {
      return
//        ThemeSwitchingArea(
//        child:
        SafeArea(
          child: Material(
            child: Container(
              child: Row(
                children: <Widget>[
                  Flexible(
                    child: DashboardIndustryBody(),
                    flex: 4,
                  ),
                ],
              ),
            ),
          ),
//        ),
      );
    } else {
      return Container(
        child: Center(
          child: Text("You are On a Phone"),
        ),
      );
    }
  }
}
