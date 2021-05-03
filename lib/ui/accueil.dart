import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:marketpulse_ui/ui/all.dart';
import 'package:marketpulse_ui/ui/dashboard_industry.dart';
import 'package:marketpulse_ui/ui/entities.dart';
import 'package:marketpulse_ui/widgets/top_bar.dart';
var title = "Application as a Service - Apprenda";
var description =
    "Applications As a Service - Apprenda Our Offering Our Offering Learn more about our Kubernetes-enabled product offering. Apprenda Cloud Platform Learn More.";
var source = "Google";
var link =
    "https://apprenda.com/library/software-on-demand/applications-as-a-service/";

// List of categories for Selected filter (the right panel)
List<String> categorySelectedFiles = [
  "FileDate",
  "Failed tasks(ETL)",
  "Path(s)",
  "IT Terms",
  "Software",
  "Locations",
  "Language",
  "Content type group",
  "Content Type"
];


class Accueil extends StatefulWidget {
  Accueil({Key key}) : super(key: key);

  @override
  _Accueil createState() => _Accueil();
}

  class _Accueil extends State<Accueil>  with SingleTickerProviderStateMixin {
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: CustomAppBar(),
      body:
      Column(
        children: [
          TopBar(),
          Expanded(
            child: DefaultTabController(
                length: 3, // length of tabs
                initialIndex: 0,
                child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: <Widget>[
                  Container(
                    child: TabBar(
                      labelColor: Colors.blue,
                      unselectedLabelColor: Colors.black,
                      tabs: [
                        Tab(text: 'All'),
                        Tab(text: 'Analyse'),
                        Tab(text: 'Entities'),
                      ],
                    ),
                  ),
                  Expanded(
                    child: TabBarView(children: <Widget>[
                      All(),
                      DashboardIndustry(),
                      Entities(),
                    ]),
                  )
                ])
            ),
          ),
        ],
      ),
    );
  }}

  class HtmlData extends StatefulWidget {
    @override
    _HtmlDataState createState() => _HtmlDataState();
  }

  class _HtmlDataState extends State<HtmlData> {
    @override


    Widget build(BuildContext context) {
      return Container();
    }
  }

