import 'package:flutter/material.dart';
import 'package:marketpulse_ui/provider/ChangeThemeProvider.dart';
import 'package:marketpulse_ui/ui/dashboard_industry.dart';
import 'package:provider/provider.dart';
import './ui/accueil.dart';

import 'theme_config.dart';
void main() {

  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => ChangeThemeProvider(data:ThemeData.light(),widgetColor: Colors.white,widgetBgColor: Colors.white,dividerColor: Colors.black54)),
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
              home: Accueil(),
            );
          },
        );
//      }),
//    );
  }
}
