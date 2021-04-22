import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:custom_switch/custom_switch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:marketpulse_ui/provider/ChangeThemeProvider.dart';
import 'package:provider/provider.dart';

import '../theme_config.dart';


class TopBar extends StatefulWidget{
  @override
  _TopBar createState() => _TopBar();
}

class _TopBar extends State<TopBar> {

  bool status = false;

  Widget _header() => Container(
    height: 70.0,
    decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.black12),
        )),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SvgPicture.asset("marketpulseicon.svg"),
        //Icon(Icons.nine_k_plus),
        SizedBox(
          width: 10,
        ),
        //Text("Smart Content Database", style: TextStyle(fontFamily: 'Ubuntu-Bold'),)
      ],
    ),
  );

  Widget _search() => Container(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: TextFormField(
            style: TextStyle(color: Colors.black, fontSize: 16.0),
            cursorColor: Colors.grey,
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.search,
                color: Colors.black,
              ),
              hintText: 'Search Industry, Enterprise, RFPS ...',
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 32.0, vertical: 14.0),
              border: InputBorder.none,
            ),
          ),
        ),
      );

  Widget _notifications() => Container(
        decoration: BoxDecoration(
          border: Border(
              right: BorderSide(color: Colors.black12),
              left: BorderSide(color: Colors.black12)),
        ),
        child: Center(
          child: IconButton(icon: Icon(Icons.notifications), onPressed: () {}),
        ),
      );

  Widget _settings() => Container(
        decoration: BoxDecoration(
            border: Border(right: BorderSide(color: Colors.black12))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CustomSwitch(
              activeColor: Colors.blue,
              value: status,
              onChanged: (value) {
                print("VALUE : $value");
                setState(() {
                  status = value;
                });
//                ThemeSwitcher.of(context).changeTheme(
//                  theme: ThemeProvider.of(context).brightness ==
//                      Brightness.light
//                      ? darkTheme
//                      : lightTheme,
//                );
                Provider.of<ChangeThemeProvider>(context, listen: false)
                    .setTheme(value ? ChangeThemeProvider().dark : ChangeThemeProvider().light,);
                Provider.of<ChangeThemeProvider>(context, listen: false)
                    .setColor(value ? 1:0);
              },
            )
          ],
        ),
      );

  Widget _me() =>  Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.person),
              SizedBox(
                width: 26,
              ),
              Text(
                'Edgar',
                style: TextStyle(fontSize: 18),
              )
            ],
          ),
  );

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Consumer<ChangeThemeProvider>(
        builder: (context,change,_){
          return Container(
            height: 70.0,
            decoration: BoxDecoration(
                color: change.colorValue,
                border: Border(bottom: BorderSide(color: Colors.black12))),
            child: Row(
              children: <Widget>[
                Flexible(
                  flex: 4,
                  child: _header(),
                ),
                Flexible(
                  flex: 8,
                  child: _search(),
                ),
                Flexible(
                  flex: 1,
                  child: _notifications(),
                ),
                Flexible(
                  flex: 1,
                  child: _settings(),
                ),
                Flexible(
                  flex: 3,
                  child: _me(),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
