import 'package:flutter/material.dart';
import 'customAppBar.dart';
import 'CardRFP.dart';
import 'CardImage.dart';
import 'CardSound.dart';
import 'CardVideo.dart';

// Variables used as examples:
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

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 50),
        color: Colors.white,
        child: Row(children: [

          /// Left Side of the page
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
                        CardVideo(),
                      ],
                    ),
                  )
                ]),
          ),

          /// Right side of the page
          Expanded(
            child: Card(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10.0, horizontal: 8),
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
                        Container(
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                            ),
                            child: Text(
                              "Search",
                              style: TextStyle(color: Colors.black),
                            )),
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
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 5, vertical: 3),
                              child: Row(children: [
                                Icon(Icons.check,
                                    size: 20, color: Colors.white),
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
                          SizedBox(width: 10),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 5, vertical: 3),
                              child: Row(children: [
                                Icon(
                                  Icons.check,
                                  size: 20,
                                ),
                                Text(
                                  'IT Terms',
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                              ]),
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 5, vertical: 3),
                              child: Row(children: [
                                Icon(
                                  Icons.check,
                                  size: 20,
                                ),
                                Text(
                                  'IT Terms',
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                              ]),
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
          ),
        ]),
      ),
    );
  }
}
