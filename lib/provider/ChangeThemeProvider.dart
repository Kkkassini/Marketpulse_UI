

import 'package:flutter/material.dart';

class ChangeThemeProvider with ChangeNotifier{

  ChangeThemeProvider({this.data ,this.widgetColor,this.widgetBgColor,this.dividerColor});

  ThemeData data;
  Color widgetColor;
  Color widgetBgColor;
  Color dividerColor;

  List<Color> colorList = [Colors.white,Colors.black54];
  List<Color> colorWidgetBgList = [Colors.white,Color(0xff232d37)];

  Color get colorValue => widgetColor;
  Color get widgetBgValue => widgetBgColor;
  Color get dividerValue => dividerColor;

  ThemeData get value => data;

  void setColor(index){
    widgetColor = colorList[index];
    notifyListeners();
  }
  void setDivider(index){
    dividerColor = colorList[index];
    notifyListeners();
  }
  void setWidgetBg(index){
    widgetBgColor = colorWidgetBgList[index];
    notifyListeners();
  }

  void setTheme(ThemeData themeData){
    data = themeData;
    notifyListeners();
  }

  ThemeData light = ThemeData.light();

  ThemeData dark = ThemeData.dark();

  ThemeData pinkTheme = ThemeData.light().copyWith(
      primaryColor: Color(0xFFF49FB6),
      scaffoldBackgroundColor: Color(0xFFFAF8F0),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        foregroundColor: Color(0xFF24737c),
        backgroundColor: Color(0xFFA6E0DE),
      ),
      textTheme: TextTheme(
        bodyText1: TextStyle(
          color: Colors.black87,
        ),
      ));

  ThemeData halloweenTheme = ThemeData.light().copyWith(
    primaryColor: Color(0xFF55705A),
    scaffoldBackgroundColor: Color(0xFFE48873),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      foregroundColor: Color(0xFFea8e71),
      backgroundColor: Color(0xFF2b2119),
    ),
  );

  ThemeData darkBlueTheme = ThemeData.dark().copyWith(
    primaryColor: Color(0xFF1E1E2C),
    scaffoldBackgroundColor: Color(0xFF2D2D44),
    textTheme: TextTheme(
      bodyText1: TextStyle(
        color: Color(0xFF33E1Ed),
      ),
    ),
  );

}