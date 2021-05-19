import 'dart:async';
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Entities extends StatefulWidget {
  @override
  _EntitiesState createState() => _EntitiesState();
}

class _EntitiesState extends State<Entities> {
  Future<EntitiesAlbum> futureAlbum;
  List<EntitiesData> dataList = [];

  @override
  void initState() {
    super.initState();
    futureAlbum = fetchEntitiesAlbum();
  }

  Future<EntitiesAlbum> fetchEntitiesAlbum() async {
    final response = await http
        .get('http://10.24.42.121:2020/get_all_entities_of_all_categories/');

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      final Map<String, dynamic> itJson = jsonDecode(response.body)['ITTerms'];
      itJson.forEach((key, value) => {
            dataList.add(EntitiesData("ITterms", key, value))
          });
      final Map<String, dynamic> softwareJson =
          jsonDecode(response.body)['Software'];
      softwareJson.forEach((key, value) => {
            dataList.add(EntitiesData("Software", key, value))
          });
      final Map<String, dynamic> orgaJson =
          jsonDecode(response.body)['Organisation'];
      orgaJson.forEach((key, value) => {
            dataList.add(EntitiesData("Organisation", key, value))
          });
      final Map<String, dynamic> cyberJson =
          jsonDecode(response.body)['Cybersecurity'];
      cyberJson.forEach((key, value) => {
            dataList.add(EntitiesData("Cybersecurity", key, value))
          });
      return EntitiesAlbum.fromJson(jsonDecode(response.body));
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: ListView(
        children: [
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10),
              child: FutureBuilder<EntitiesAlbum>(
                  future: futureAlbum,
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      // return SizedBox(width: 300, height: 300,child: ListView(children:[ Text(snapshot.data.name.toString() ??'defa1 value')]));
                      return Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children:[
                        Expanded(
                          child: Column(

                            children: [
                               _location(),
                              _itTerms(),
                            ]),
                        ),
                        Expanded(
                              child: Column(

                                children: [
                                  _organization(),
                                  _cybersecurity(),

                          ],
                        ),
                            ),
                      ]);
                    }  else if (snapshot.hasError) {
                      return Text("${snapshot.error}");
                    }

                    // By default, show a loading spinner.
                    return CircularProgressIndicator();
                  })),
        ],
      ),
    );
  }

  Widget _location() => Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Text(
                  'Software',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
            Icon(Icons.info_outline),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0),
          child: Card(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
            child: Column(children: [
              for (int index = 0; index < dataList.length; index++)
                if (dataList[index].type == "Software")
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('${dataList[index].name}'),
                        Text(
                          '${dataList[index].nbDocuments} Documents',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 14,
                          ),
                        )
                      ],
                    ),
                    if (index != dataList.length - 1) Divider()
                  ]),
            ]),
          )),
        )
      ]);

  Widget _itTerms() => Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Text(
                  'It Terms',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
            Icon(Icons.info_outline),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Card(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
              for (int index = 0; index < dataList.length; index++)
                if (dataList[index].type == "ITterms")
                  Column(
                      children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('${dataList[index].name}'),
                        Text(
                          '${dataList[index].nbDocuments} Documents',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 14,
                          ),
                        )
                      ],
                    ),
                    if (index != dataList.length - 1) Divider()
                  ]),
            ]),
          )),
        )
      ]);

  Widget _organization() => Column(children: [
        Row(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.lightBlue,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Text(
                  'Organisation',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
            Icon(Icons.info_outline),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Card(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
            child: Column(children: [
              for (int index = 0; index < dataList.length; index++)
                if (dataList[index].type == "Organisation")
                  Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('${dataList[index].name}'),
                        Text(
                          '${dataList[index].nbDocuments} Documents',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 14,
                          ),
                        )
                      ],
                    ),
                    if (index != dataList.length - 1) Divider()
                  ]),
            ]),
          )),
        )
      ]);

  Widget _cybersecurity() => Column(children: [
        Row(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Text(
                  'Cybersecurity',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
            Icon(Icons.info_outline),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Card(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
            child: Column(children: [
              for (int index = 0; index < dataList.length; index++)
                if (dataList[index].type == "Cybersecurity")
                  Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('${dataList[index].name}'),
                        Text(
                          '${dataList[index].nbDocuments} Documents',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 14,
                          ),
                        )
                      ],
                    ),
                    if (index != dataList.length - 1) Divider()
                  ]),
            ]),
          )),
        )
      ]);
}

class EntitiesAlbum {
  final Object software;


  EntitiesAlbum(
      {this.software});

  factory EntitiesAlbum.fromJson(Map<String, dynamic> json) {
    return EntitiesAlbum(
      software: json['Software'],

    );
  }
}

class EntitiesData {
  final String _type;
  final String _name;
  final int _nbDocuments;

  String get type => _type;

  String get name => _name;

  int get nbDocuments => _nbDocuments;

  EntitiesData(this._type, this._name, this._nbDocuments);
}
