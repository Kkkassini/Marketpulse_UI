import 'package:custom_switch/custom_switch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_tags/flutter_tags.dart';
import 'package:marketpulse_ui/provider/ChangeThemeProvider.dart';
import 'package:provider/provider.dart';
import 'UploadFile.dart';
import 'drag_and_drop.dart';


class TopBar extends StatefulWidget {
  @override
  _TopBar createState() => _TopBar();
}

class _TopBar extends State<TopBar> with SingleTickerProviderStateMixin  {

  bool status = false;

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
                            FileUploadApp(),
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
                                      Navigator.pop(context, true);
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
                      ],
                    ),
                  )),
              actions: <Widget>[],
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