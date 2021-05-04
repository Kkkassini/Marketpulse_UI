import 'package:flutter/material.dart';
import 'package:marketpulse_ui/ui/analyse_rfp_body.dart';
import 'package:marketpulse_ui/widgets/top_bar.dart';

class Analyse extends StatefulWidget {
  Analyse({Key key}) : super(key: key);

  @override
  _Analyse createState() => _Analyse();
}
/// Analyse page with a Top Bar and the Body
class _Analyse extends State<Analyse> {
  @override
  Widget build(BuildContext context) {
    final shortestSide = MediaQuery.of(context).size.shortestSide;
    return Scaffold(
        body: Column(children: [
      TopBar(),
      Expanded(
          child: SafeArea(
        child: Material(
          child: Container(
            child: Row(
              children: <Widget>[
                Flexible(
                  child: AnalyseRfpBody(),
                  flex: 4,
                ),
              ],
            ),
          ),
        ),
      ))
    ]));
  }
}
