import 'package:flutter/material.dart';

import "package:marketpulse_ui/Gallery.dart";
import 'package:marketpulse_ui/provider/ChangeThemeProvider.dart';
import 'package:marketpulse_ui/ui/dashboard_industry.dart';

import 'package:flutter/scheduler.dart' show timeDilation;
import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:provider/provider.dart';

import 'theme_config.dart';

void main() {

  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => ChangeThemeProvider()),
    ],
    child: MyApp()
  ));

//  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final isPlatformDark =
        WidgetsBinding.instance.window.platformBrightness == Brightness.dark;
    final initTheme = isPlatformDark ? darkTheme : lightTheme;
//    return ThemeProvider(
//      initTheme: initTheme,
//      child: Builder(builder: (context) {
        return Consumer<ChangeThemeProvider>(
          builder: (context,change,_){
            return MaterialApp(
              title: 'Smart Content Database',
//          theme: ThemeProvider.of(context),
              theme: change.value,
              home: DashboardIndustry(),
            );
          },
        );
//      }),
//    );
  }
}
