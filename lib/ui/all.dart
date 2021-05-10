import 'package:flutter/material.dart';
import 'package:marketpulse_ui/widgets/analyse_preview.dart';
import 'package:marketpulse_ui/widgets/vertical_bar.dart';

import '../widgets/card_image.dart';
import '../widgets/card_rfp.dart';
import '../widgets/card_sound.dart';
import '../widgets/card_video.dart';

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

class All extends StatefulWidget {
  @override
  _AllState createState() => _AllState();
}

class _AllState extends State<All> with SingleTickerProviderStateMixin {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      endDrawer: AnalysePreview(),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            flex: 30,
            child: Container(
              padding: EdgeInsets.only(left: 50),
              child: Row(children: [
                Expanded(
                  flex: 4,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Expanded(
                          child: ListView(
                            children: [
                              ///List of all the previous results
                              CardRFP(
                                  title: title,
                                  description: description,
                                  source: source,
                                  link: link),
                              CardImage(name: "Apprenda"),
                              CardSound(),
                              //Drawer(),
                              CardVideo(),
                            ],
                          ),
                        )
                      ]),
                ),

                /// Right side of the page
                _rightSide(),
              ]),
            ),
          ),
          _drawerButton(),
        ],
      ),
    );
  }

  Widget _drawerButton() => Flexible(
      flex: 1,
      child: Container(
          height: 50,
          decoration: new BoxDecoration(
            color: Colors.white,
            borderRadius: new BorderRadius.only(
              topLeft: const Radius.circular(40.0),
              bottomLeft: const Radius.circular(40.0),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                spreadRadius: 3,
                blurRadius: 3,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: TextButton(
              onPressed: () {
                _scaffoldKey.currentState.openEndDrawer();
              },
              style: TextButton.styleFrom(
                primary: Colors.black,
              ),
              child: Icon(Icons.menu, size: 40))));

  Widget _rightSide() => Expanded(
        child: Card(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 8),
            child: ListView(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text("Selected filters",
                        style: TextStyle(
                          fontFamily: 'Ubuntu',
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                        )),
                    SizedBox(height: 10),
                    _search()
                  ],
                ),
                SizedBox(height: 10),

                ///Tags
                SizedBox(
                  height: 30,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: const Color(0xFF2B0A3D),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 5, vertical: 3),
                          child: Row(children: [
                            Icon(Icons.check, size: 20, color: Colors.white),
                            Text(
                              'IT Terms',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                          ]),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 5, vertical: 3),
                            child: Row(children: [
                              Icon(
                                Icons.check,
                                color: Colors.white,
                                size: 20,
                              ),
                              Text(
                                'IT Terms',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                ),
                              ),
                            ]),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 5, vertical: 3),
                            child: Row(children: [
                              Icon(
                                Icons.check,
                                color: Colors.white,
                                size: 20,
                              ),
                              Text(
                                'IT Terms',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                ),
                              ),
                            ]),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                ///Categories
                for (var index = 0;
                    index < categorySelectedFiles.length;
                    index++)
                  ExpansionTile(
                    title: Text(
                      categorySelectedFiles[index],
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.w500),
                    ),
                    children: <Widget>[
                      for (var i = 0; i < 3; i++)
                        ListTile(
                          title: Text(
                            "Unknown",
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                        )
                    ],
                  ),
              ],
            ),
          ),
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
              border: InputBorder.none,
            ),
          ),
        ),
      );
}
