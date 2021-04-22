import 'package:flutter/material.dart';
import 'package:flutter_tags/flutter_tags.dart';
import 'package:marketpulse_ui/DragAndDrop.dart';
import 'package:marketpulse_ui/widgets/datatable_industry.dart';

import 'CardImage.dart';
import 'CardRFP.dart';
import 'CardSound.dart';
import 'CardVideo.dart';

import "package:marketpulse_ui/Gallery.dart";
import 'package:marketpulse_ui/provider/ChangeThemeProvider.dart';
import 'package:marketpulse_ui/ui/dashboard_industry.dart';

import 'package:flutter/scheduler.dart' show timeDilation;
import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:provider/provider.dart';

import 'CustomAppBar.dart';
import 'theme_config.dart';

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

  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => ChangeThemeProvider()),
    ],
    child: MyApp()
  ));

//  runApp(MyApp());
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>  with SingleTickerProviderStateMixin {
  List<String> sectorTags = [];
  List<String> clientTags = [];
  List<String> tagsTags = [];

  // We initialize controllers here in order to keep there data threw the pages.
  // It is not the case for _sectorController & _ clientController because their value is assigned to a list.

  TextEditingController _urlController = TextEditingController();
  TextEditingController _tagsController = TextEditingController();
  TextEditingController _modificationTitleController = TextEditingController();
  TextEditingController _annotationController = TextEditingController();


  Future<void> showInformationDialog(BuildContext context) async {
    return await showDialog(
        context: context,
        builder: (context) {
          final _formKey = GlobalKey<FormState>();
          TextEditingController _sectorController = TextEditingController();
          TextEditingController _clientController = TextEditingController();

          return StatefulBuilder(builder: (context, setState) {
            return AlertDialog(
              insetPadding: EdgeInsets.symmetric(horizontal: 8),
              content: Container(
                  width: 600,
                  child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Upload Local Document.",
                                style: TextStyle(
                                  fontFamily: 'Ubuntu',
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,
                                )),
                            Text("Add a new entry",
                                style: TextStyle(
                                  fontFamily: 'Ubuntu',
                                  fontSize: 14,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w400,
                                )),
                            DragAndDrop(),
                          ],
                        ),
                        SizedBox(
                          height: 280,
                          child: Flexible(
                            child: ListView(
                              children: [
                                Padding(
                                  padding:
                                  const EdgeInsets.symmetric(vertical: 10),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment
                                        .start,
                                    children: [
                                      Text("Upload with URL",
                                          style: TextStyle(
                                            fontFamily: 'Ubuntu',
                                            fontSize: 20,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w700,
                                          )),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 8.0),
                                        child: TextFormField(
                                          controller: _urlController,
                                          decoration: InputDecoration(
                                              fillColor: Colors.grey,
                                              border: OutlineInputBorder(),
                                              hintText: 'Copy URL'),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding:
                                  const EdgeInsets.symmetric(vertical: 10),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment
                                        .start,
                                    children: [
                                      Text("Add sector and client",
                                          style: TextStyle(
                                            fontFamily: 'Ubuntu',
                                            fontSize: 20,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w700,
                                          )),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 8.0),
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child: TextFormField(
                                                controller: _sectorController,
                                                validator: (String value) {
                                                  return sectorTags.isNotEmpty
                                                      ? null
                                                      : "Add at least one sector";
                                                },
                                                decoration: InputDecoration(
                                                  hintText: 'Document Name',
                                                  labelText: 'Sector',
                                                  border: OutlineInputBorder(),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            ElevatedButton(
                                                onPressed: () =>
                                                {
                                                  setState(() {
                                                    sectorTags.add(
                                                        _sectorController
                                                            .text);
                                                  }),
                                                  _sectorController =
                                                      TextEditingController(
                                                          text: "")
                                                },
                                                child: Text("+ Add")),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        alignment: Alignment.topLeft,
                                        child: Tags(
                                          alignment: WrapAlignment.center,
                                          itemCount: sectorTags.length,
                                          itemBuilder: (index) {
                                            return ItemTags(
                                              index: index,
                                              title: sectorTags[index],
                                              color: Colors.blue,
                                              activeColor: Colors.blueGrey,
                                              highlightColor: Colors
                                                  .transparent,
                                              splashColor: Colors.transparent,
                                              elevation: 0.0,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(7.0)),
//                textColor: ,
                                              textColor: Colors.white,
                                              textActiveColor: Colors.white,
                                              removeButton: ItemTagsRemoveButton(
                                                  color: Colors.black,
                                                  backgroundColor:
                                                  Colors.transparent,
                                                  size: 14,
                                                  onRemoved: () {
                                                    setState(() {
                                                      sectorTags.remove(
                                                          sectorTags[index]);
                                                    });

                                                    return true;
                                                  }),
                                              textOverflow: TextOverflow
                                                  .ellipsis,
                                            );
                                          },
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 8.0),
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child: TextFormField(
                                                controller: _clientController,
                                                validator: (value) {
                                                  return clientTags.isNotEmpty
                                                      ? null
                                                      : "Add at least one client";
                                                },
                                                decoration: InputDecoration(
                                                  labelText: 'Client',
                                                  border: OutlineInputBorder(),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            ElevatedButton(
                                                onPressed: () =>
                                                {
                                                  setState(() {
                                                    clientTags.add(
                                                        _clientController
                                                            .text);
                                                  }),
                                                  _clientController =
                                                      TextEditingController(
                                                          text: "")
                                                },
                                                child: Text("+ Add")),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        alignment: Alignment.topLeft,
                                        child: Tags(
                                          alignment: WrapAlignment.center,
                                          itemCount: clientTags.length,
                                          itemBuilder: (index) {
                                            return ItemTags(
                                              index: index,
                                              title: sectorTags[index],
                                              color: Colors.blue,
                                              activeColor: Colors.blueGrey,
                                              onPressed: (Item item) {
                                                print('pressed');
                                              },
                                              highlightColor: Colors
                                                  .transparent,
                                              splashColor: Colors.transparent,
                                              elevation: 0.0,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(7.0)),
//                textColor: ,
                                              textColor: Colors.white,
                                              textActiveColor: Colors.white,
                                              removeButton: ItemTagsRemoveButton(
                                                  color: Colors.black,
                                                  backgroundColor:
                                                  Colors.transparent,
                                                  size: 14,
                                                  onRemoved: () {
                                                    setState(() {
                                                      clientTags.remove(
                                                          clientTags[index]);
                                                    });

                                                    return true;
                                                  }),
                                              textOverflow: TextOverflow
                                                  .ellipsis,
                                            );
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding:
                              const EdgeInsets.symmetric(horizontal: 8.0),
                              child: ElevatedButton(
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 5.0),
                                      child: Icon(
                                        Icons.arrow_back_ios,
                                        size: 6,
                                      ),
                                    ),
                                    Text('Back'),
                                  ],
                                ),
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.red,
                                ),
                                onPressed: () {
                                  Navigator.pop(context, true);
                                },
                              ),
                            ),
                            Padding(
                              padding:
                              const EdgeInsets.symmetric(horizontal: 8.0),
                              child: ElevatedButton(
                                  child: Row(
                                    children: [
                                      Text('Next'),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 5.0),
                                        child: Icon(
                                          Icons.arrow_forward_ios,
                                          size: 6,
                                        ),
                                      ),
                                    ],
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.blue,
                                  ),
                                  onPressed: () {
                                    if (_formKey.currentState.validate()) {
                                      Navigator.pop(context, true);
                                      showInformationDialog2(context);
                                    }

                                    /* if (_formKey.currentState.validate()) {
                            // Do something like updating SharedPreferences or User Settings etc.
                            Navigator.pop(context, true);
                            showInformationDialog2(context);
                          }*/
                                  }),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 5.0),
                                child: SizedBox(
                                  height: 5,
                                  width: 5,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20))
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                                width: 5,
                                child: Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.blue,
                                      ),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20))
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )),
              actions: <Widget>[
              ],
            );
          });
        });
  }

  Future<void> showInformationDialog2(BuildContext context) async {
    return await showDialog(
        context: context,
        builder: (context) {
          final _formKey = GlobalKey<FormState>();

          return StatefulBuilder(builder: (context, setState) {
            return AlertDialog(
              insetPadding: EdgeInsets.symmetric(horizontal: 8),
              content: Container(
                  width: 600,
                  key: _formKey,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Tag & Annot this document",
                              style: TextStyle(
                                fontFamily: 'Ubuntu',
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                              )),
                          Text("Add a new entry",
                              style: TextStyle(
                                fontFamily: 'Ubuntu',
                                fontSize: 14,
                                color: Colors.grey,
                                fontWeight: FontWeight.w400,
                              )),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Add a modification title",
                                style: TextStyle(
                                  fontFamily: 'Ubuntu',
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,
                                )),
                            Padding(
                              padding:
                              const EdgeInsets.symmetric(vertical: 8.0),
                              child: Expanded(
                                child: TextFormField(
                                  controller: _modificationTitleController,
                                  decoration: InputDecoration(
                                    labelText: 'Title',
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Add new Tags",
                                style: TextStyle(
                                  fontFamily: 'Ubuntu',
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,
                                )),
                            Padding(
                              padding:
                              const EdgeInsets.symmetric(vertical: 8.0),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: TextFormField(
                                      controller: _tagsController,
                                      validator: (String value) {
                                        return tagsTags.isNotEmpty
                                            ? null
                                            : "Add at least one sector";
                                      },
                                      decoration: InputDecoration(
                                        hintText: 'Document Name',
                                        labelText: 'Tags',
                                        border: OutlineInputBorder(),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  ElevatedButton(
                                      onPressed: () =>
                                      {
                                        setState(() {
                                          tagsTags
                                              .add(_tagsController.text);
                                        }),
                                        _tagsController =
                                            TextEditingController(text: "")
                                      },
                                      child: Text("+ Add")),
                                ],
                              ),
                            ),
                            Container(
                              alignment: Alignment.topLeft,
                              child: Tags(
                                alignment: WrapAlignment.center,
                                itemCount: tagsTags.length,
                                itemBuilder: (index) {
                                  return ItemTags(
                                    index: index,
                                    title: tagsTags[index],
                                    color: Colors.blue,
                                    activeColor: Colors.blueGrey,
                                    highlightColor: Colors.transparent,
                                    splashColor: Colors.transparent,
                                    elevation: 0.0,
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(7.0)),
//                textColor: ,
                                    textColor: Colors.white,
                                    textActiveColor: Colors.white,
                                    removeButton: ItemTagsRemoveButton(
                                        color: Colors.black,
                                        backgroundColor: Colors.transparent,
                                        size: 14,
                                        onRemoved: () {
                                          setState(() {
                                            tagsTags.remove(tagsTags[index]);
                                          });

                                          return true;
                                        }),
                                    textOverflow: TextOverflow.ellipsis,
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Column(
                          children: [
                            Text("Add a new annotation",
                                style: TextStyle(
                                  fontFamily: 'Ubuntu',
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,
                                )),
                            SizedBox(
                              height: 10,
                            ),
                            ElevatedButton(
                              onPressed: () => {},
                              child: Text("VIEW ANNOTATIONS HISTORY",
                                  style: TextStyle(
                                    fontFamily: 'Ubuntu',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  )),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5.0),
                        child: TextFormField(
                          controller: _annotationController,
                          decoration: InputDecoration(
                            labelText: 'Annotation',
                            border: OutlineInputBorder(),
                          ),
                          maxLines: 4,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding:
                            const EdgeInsets.symmetric(horizontal: 8.0),
                            child: ElevatedButton(
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 5.0),
                                    child: Icon(
                                      Icons.arrow_back_ios,
                                      size: 6,
                                    ),
                                  ),
                                  Text('Back'),
                                ],
                              ),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.red,
                              ),
                              onPressed: () {
                                Navigator.pop(context, true);
                                showInformationDialog(context);
                              },
                            ),
                          ),
                          Padding(
                            padding:
                            const EdgeInsets.symmetric(horizontal: 8.0),
                            child: ElevatedButton(
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 5.0),
                                    child: Icon(Icons.upload_sharp, size: 10,),
                                  ),
                                  Text('Upload'),
                                ],
                              ),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.blue,
                              ),
                              onPressed: () {
                                if (_formKey.currentState.validate()) {
                                  // Do something like updating SharedPreferences or User Settings etc.
                                  Navigator.of(context).pop();
                                }
                              },
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 5.0),
                                child:
                                SizedBox(
                                  height: 5,
                                  width: 5,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.blue,
                                        ),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20))
                                    ),
                                  ),
                                )
                            ),
                            SizedBox(
                              height: 5,
                              width: 5,
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(20))
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  )),
            );
          });
        });
  }

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
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: ElevatedButton(
                          onPressed: () async {
                            await showInformationDialog(context);
                          },
                          //(){Navigator.push(context, MaterialPageRoute(builder:(context)=> DragAndDrop()));} ,
                          style: ElevatedButton.styleFrom(
                            primary: Colors.blue,
                          ),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.upload_sharp, size: 10),
                                Text("Upload")
                              ]))),
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
