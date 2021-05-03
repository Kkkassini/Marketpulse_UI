import 'dart:typed_data';

import 'package:custom_switch/custom_switch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_tags/flutter_tags.dart';
import 'package:marketpulse_ui/provider/ChangeThemeProvider.dart';
import 'package:marketpulse_ui/ui/UploadFile.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;
import '../theme_config.dart';
import 'drag_and_drop.dart';


class TopBar extends StatefulWidget {
  @override
  _TopBar createState() => _TopBar();
}

class _TopBar extends State<TopBar> with SingleTickerProviderStateMixin  {

  bool status = false;
  String _string = "Not set yet";

  Widget _header() =>
      Container(
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

  Widget _search() =>
      Container(
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

  TextEditingController _urlController = TextEditingController();
  TextEditingController _tagsController = TextEditingController();
  TextEditingController _modificationTitleController = TextEditingController();
  TextEditingController _annotationController = TextEditingController();
  List<String> sectorTags = [];
  List<String> clientTags = [];
  List<String> tagsTags = [];

  Widget _upload() =>
      ElevatedButton(
          onPressed: () async {
            await showInformationDialog(context);
          },
          //(){Navigator.push(context, MaterialPageRoute(builder:(context)=> DragAndDrop()));} ,
          style: ElevatedButton.styleFrom(
            primary: Colors.blue,
          ),
          child: Icon(Icons.upload_sharp, size: 20));

  Future<void> showInformationDialog(BuildContext context) async {
    return await showDialog(
        context: context,
        builder: (context) {
          final _formKey = GlobalKey<FormState>();
          TextEditingController _sectorController = TextEditingController();
          TextEditingController _clientController = TextEditingController();
          Uint8List fileToUpload;
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
                            DragAndDrop(fileUint8List: (Uint8List tmpFile)=> setState(()=>fileToUpload = tmpFile)),
                            SizedBox(
                              height: 100,
                              child: ListView(
                                children: [
                                FileUploadApp(fileUint8List: fileToUpload),
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 280,
                          child: ListView(
                            children: [
                              Padding(
                                padding:
                                const EdgeInsets.symmetric(vertical: 10),
                                child: Column(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
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
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
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
                                            highlightColor:
                                            Colors.transparent,
                                            splashColor: Colors.transparent,
                                            elevation: 0.0,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(7.0)),
//                textColor: ,
                                            textColor: Colors.white,
                                            textActiveColor: Colors.white,
                                            removeButton:
                                            ItemTagsRemoveButton(
                                                color: Colors.black,
                                                backgroundColor:
                                                Colors.transparent,
                                                size: 14,
                                                onRemoved: () {
                                                  setState(() {
                                                    sectorTags.remove(
                                                        sectorTags[
                                                        index]);
                                                  });

                                                  return true;
                                                }),
                                            textOverflow:
                                            TextOverflow.ellipsis,
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
                                            title: clientTags[index],
                                            color: Colors.blue,
                                            activeColor: Colors.blueGrey,
                                            onPressed: (Item item) {
                                              print('pressed');
                                            },
                                            highlightColor:
                                            Colors.transparent,
                                            splashColor: Colors.transparent,
                                            elevation: 0.0,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(7.0)),
//                textColor: ,
                                            textColor: Colors.white,
                                            textActiveColor: Colors.white,
                                            removeButton:
                                            ItemTagsRemoveButton(
                                                color: Colors.black,
                                                backgroundColor:
                                                Colors.transparent,
                                                size: 14,
                                                onRemoved: () {
                                                  setState(() {
                                                    clientTags.remove(
                                                        clientTags[
                                                        index]);
                                                  });

                                                  return true;
                                                }),
                                            textOverflow:
                                            TextOverflow.ellipsis,
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
                                padding:
                                const EdgeInsets.symmetric(horizontal: 5.0),
                                child: SizedBox(
                                  height: 5,
                                  width: 5,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20))),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                                width: 5,
                                child: Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.black,
                                      ),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20))),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )),
              actions: <Widget>[],
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
                                    child: Icon(
                                      Icons.upload_sharp,
                                      size: 10,
                                    ),
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
                                padding:
                                const EdgeInsets.symmetric(horizontal: 5.0),
                                child: SizedBox(
                                  height: 5,
                                  width: 5,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.black,
                                        ),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20))),
                                  ),
                                )),
                            SizedBox(
                              height: 5,
                              width: 5,
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
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


Widget _notifications() =>
    Container(
      decoration: BoxDecoration(
        border: Border(
            right: BorderSide(color: Colors.black12),
            left: BorderSide(color: Colors.black12)),
      ),
      child: Center(
        child: IconButton(icon: Icon(Icons.notifications), onPressed: () {}),
      ),
    );

Widget _settings() =>
    Container(
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
                  .setTheme(
                value ? ChangeThemeProvider().dark : ChangeThemeProvider()
                    .light,);
              Provider.of<ChangeThemeProvider>(context, listen: false)
                  .setColor(value ? 1 : 0);
            },
          )
        ],
      ),
    );

Widget _me() =>
    Container(
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
      builder: (context, change, _) {
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
                child: _upload(),
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
}}
