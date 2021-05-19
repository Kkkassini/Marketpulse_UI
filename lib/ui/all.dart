import 'package:flutter/material.dart';
import 'package:flutter_tags/flutter_tags.dart';
import 'package:marketpulse_ui/model/detail_data.dart';
import 'package:marketpulse_ui/model/tags_data.dart';
import 'package:marketpulse_ui/model/tags_list_data.dart';
import 'package:marketpulse_ui/net/api.dart';
import 'package:marketpulse_ui/provider/event_bus.dart';
import 'package:marketpulse_ui/ui/document_detail.dart';
import 'package:marketpulse_ui/widgets/analyse_preview.dart';

import '../widgets/card_image.dart';
import '../widgets/card_rfp.dart';
import '../widgets/card_sound.dart';
import '../widgets/card_video.dart';
import '../widgets/drag_and_drop.dart';
import 'company_detail.dart';

var title = "Application as a Service - Apprenda";
var description =
    "Applications As a Service - Apprenda Our Offering Our Offering Learn more about our Kubernetes-enabled product offering. Apprenda Cloud Platform Learn More.";
var source = "Google";
var link =
    "https://apprenda.com/library/software-on-demand/applications-as-a-service/";

// List of categories for Selected filter (the right panel)
List<String> categorySelectedFiles = [
  "Organisation",
  "IT Terms",
  "Software",
  "Cybersecurity",
];

Map<String,List<TagsList>> categorySelectedFilesMaps = {
      "Organisation":[TagsList("uber",Colors.green)],
      "IT Terms":[TagsList("big",Colors.red),TagsList("data",Colors.red)],
      "Software":[TagsList("network",Colors.black)],
      "Cybersecurity":[TagsList("arm",Colors.blue)],
};

class All extends StatefulWidget {
  @override
  _AllState createState() => _AllState();
}

class _AllState extends State<All> with SingleTickerProviderStateMixin,AutomaticKeepAliveClientMixin{

  List _list = mockMap["hits"]["hits"];
  dynamic data ={};
  int pageStart = 0;
  int pageSize = 10;
  List<TagList> _keyWords = [];
  var searchWord;
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  List<TagsList> tags = [];


  PageController _controller = PageController(initialPage: 0);

  int current = 0;
  var eventbus;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    a1 = TagList(t2:"entities.Organisation",t3:tagStringa1);
    a2 = TagList(t2:"entities.ITTerms",t3:tagStringa2);
    a3 = TagList(t2:"entities.Software",t3:tagStringa3);
    a4 = TagList(t2:"entities.Cybersecurity",t3:tagStringa4);
    // _getData();
    eventbus = eventBus.on<EventMessage>().listen((event){
      if (event.id == "search") {
        searchWord =  {
          "query" : event.message //关键词
        };
        _getSearch();
      }else if(event.id == "searchAll"){
        _getData();
      }
    });
  }

  _getSearch()async{
    pageStart = 0;
    pageSize = 10;
    _list.clear();
    await Api.getSearch((d) {
      setState(() {
        _list.addAll(d["hits"]["hits"]);
        pageStart += pageSize;
      });
    }, (e) {print(e); },pageStart,pageSize,searchWord: searchWord);
  }

  _getData()async{
    pageStart = 0;
    pageSize = 10;
    _list.clear();
    await Api.getIndex((d) {
      setState(() {
        _list.addAll(d["hits"]["hits"]);
        pageStart += pageSize;
      });
    }, (e) {print(e); },pageStart,pageSize);
  }


  _getFilter()async{
    pageStart = 0;
    pageSize = 10;
    _list.clear();
    await Api.getIndex((d) {
      setState(() {
        _list.addAll(d["hits"]["hits"]);
        pageStart += pageSize;
      });
    }, (e) {print(e); },pageStart,pageSize,keywords: _keyWords);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        endDrawer: AnalysePreview(),
      body:
//      FutureBuilder(
//        future: _getData(),
//        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
//          if (snapshot.connectionState == ConnectionState.done) {
//            return
              PageView(
              controller: _controller,
              physics: NeverScrollableScrollPhysics(),
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(
                      flex:30,
                      child: Container(
                        padding: EdgeInsets.only(left: 50, right:10),
                        child: Row(children: [
                          Expanded(
                            flex: 4,
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Expanded(
                                    child: ListView.builder(itemBuilder: (ctx,i){
                                      return CardRFP(
                                        title: _list[i]["_source"]["filename"],
                                        description: _list[i]["_source"]["summary"],
                                        source: source,
                                        link: link,
                                        Organisation: _list[i]["_source"]["entities"]["Organisation"]?? [],
                                        ITTerms: _list[i]["_source"]["entities"]["ITTerms"] ?? [],
                                        Software: _list[i]["_source"]["entities"]["Software"]?? [],
                                        Cybersecurity:_list[i]["_source"]["entities"]["Cybersecurity"]?? [],
                                        onClick: (){
                                          setState(() {
                                            data = _list[i];
                                          });
                                          _controller.animateToPage(1, duration: new Duration(milliseconds: 500),curve:new ElasticOutCurve(4));
                                        },);
                                    },itemCount: _list.length,
                                    ),
//                        child: ListView(
//                          children: [
//                            ///List of all the previous results
//                            CardRFP(
//                                title: title,
//                                description: description,
//                                source: source,
//                                link: link,
//                                onClick:(){
//                                  setState(() {
//                                    data = _list[]
//                                    current = 1;
//                                  });
//                                }),
//                            CardImage(name: "Apprenda"),
//                            CardSound(),
//                            CardVideo(),
//                          ],
//                        ),
                                  )
                                ]),
                          ),
                          _rightSide(),
                        ]),
                      ),
                    ),
                    _drawerButton(),
                  ],
                ),
                DocumentDetail(
                    data,(){
                  _controller.animateToPage(0, duration: new Duration(milliseconds: 500),curve:new ElasticOutCurve(4));
                },(){
                  _controller.animateToPage(2, duration: new Duration(milliseconds: 500),curve:new ElasticOutCurve(4));
                }
                ),
                CompanyDetailPage((){
                  _controller.animateToPage(1, duration: new Duration(milliseconds: 500),curve:new ElasticOutCurve(4));
                })
              ],

            )
//          }  else{
//            return Center(
//              child: CircularProgressIndicator(),
//            );
//          }
//
//        },
//      ),
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
        padding: const EdgeInsets.only(top: 10.0, left: 8,bottom:10.0),
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
//                SizedBox(height: 10),
//               _search()
              ],
            ),
            SizedBox(height: 10),



            Container(
              alignment: Alignment.topLeft,
              child: Tags(
                alignment: WrapAlignment.center,
                itemCount: tags.length,
                itemBuilder: (index) {
                  return ItemTags(
                    index: index,
                    title: tags[index].tag,
                    color: tags[index].tagColor,
                    activeColor:tags[index].tagColor,
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
                            TagsList t = tags[index];
                            if (sectorTagsa1.contains(t)) {
                              sectorTagsa1.remove(t);
                              tagStringa1.remove(t.tag);
                            }else if (sectorTagsa2.contains(t)) {
                              sectorTagsa2.remove(t);
                              tagStringa2.remove(t.tag);
                            }  else if (sectorTagsa3.contains(t)) {
                              sectorTagsa3.remove(t);
                              tagStringa3.remove(t.tag);
                            }else if (sectorTagsa4.contains(t)) {
                              sectorTagsa4.remove(t);
                              tagStringa4.remove(t.tag);
                            }
                            if (tagStringa1.isEmpty){
                              _keyWords.remove(a1);
                            }
                            if (tagStringa2.isEmpty){
                              _keyWords.remove(a2);
                            }
                            if (tagStringa3.isEmpty){
                              _keyWords.remove(a3);
                            }
                            if (tagStringa4.isEmpty){
                              _keyWords.remove(a4);
                            }
                            tags.remove(
                            tags[
                              index]);
                          if (tags.isEmpty) {
                            _keyWords.clear();
                          }
                          _getFilter();
                          });

                          return true;
                        }),
                    textOverflow:
                    TextOverflow.ellipsis,
                  );
                },
              ),
            ),
            SizedBox(height: 10,),


            ///Categories
            for(int index = 0;index<categorySelectedFilesMaps.length;index++)
              ExpansionTile(
                title: Text(
                  categorySelectedFilesMaps.keys.elementAt(index),
                  style: TextStyle(
                      fontSize: 16.0, fontWeight: FontWeight.w500),
                ),
                children: <Widget>[
                  for(int i = 0;i<categorySelectedFilesMaps.values.elementAt(index).length;i++)
                    ListTile(
                      onTap: (){
//                        if (!_keyWords.contains({"terms":{"entities.ITTerms": ["big","data","db"]}})) {
//                          _keyWords.add({"terms":{"entities.ITTerms": ["big","data","db"]}});
//                          _getFilter();
//                        }else{
//                          _keyWords.remove({"terms":{"entities.ITTerms": ["big","data","db"]}});
//                          _getFilter();
//                        }
                          setState(() {
                            if (!tags.contains(categorySelectedFilesMaps.values.elementAt(index)[i])) {
                              tags.add(TagsList(categorySelectedFilesMaps.values.elementAt(index)[i].tag, _getColor(index)));

                            }
                            if (!_getList(index).contains(categorySelectedFilesMaps.values.elementAt(index)[i])) {
                              _getList(index).add(TagsList(categorySelectedFilesMaps.values.elementAt(index)[i].tag, _getColor(index)));
                              if (!_getStringList(index).contains(categorySelectedFilesMaps.values.elementAt(index)[i].tag)) {
                                _getStringList(index).add(categorySelectedFilesMaps.values.elementAt(index)[i].tag);
                              }

                              if (!_keyWords.contains(_getMap(index))) {
                                _keyWords.add(_getMap(index));
                              }
                            }
                            _getFilter();
                          });
                      },
                      title: Text(categorySelectedFilesMaps.values.elementAt(index)[i].tag,)
                    ),
                  _search(index)
                ],
              ),
          ],
        ),
      ),
    ),
  );


  TextEditingController _sectorControllera1 = TextEditingController();
  TextEditingController _sectorControllera2 = TextEditingController();
  TextEditingController _sectorControllera3 = TextEditingController();
  TextEditingController _sectorControllera4 = TextEditingController();
  List<TagsList> sectorTagsa1 = [];
  List<TagsList> sectorTagsa2 = [];
  List<TagsList> sectorTagsa3 = [];
  List<TagsList> sectorTagsa4 = [];

  List<String> tagStringa1 = [];
  List<String> tagStringa2 = [];
  List<String> tagStringa3 = [];
  List<String> tagStringa4 = [];

  TagList a1;
  TagList a2;
  TagList a3;
  TagList a4;

  List<String> _getStringList(index){
    switch(index){
      case 0:
        return tagStringa1;
        break;
      case 1:
        return tagStringa2;
        break;
      case 2:
        return tagStringa3;
        break;
      case 3:
        return tagStringa4;
        break;
    }
  }



  TagList _getMap(index){
    switch(index){
      case 0:
        return a1;
        break;
      case 1:
        return a2;
        break;
      case 2:
        return a3;
        break;
      case 3:
        return a4;
        break;
    }
  }
  TextEditingController _getController(index){
    switch(index){
      case 0:
        return _sectorControllera1;
        break;
      case 1:
        return _sectorControllera2;
        break;
      case 2:
        return _sectorControllera3;
        break;
      case 3:
        return _sectorControllera4;
        break;
    }
  }
  List<TagsList> _getList(index){
    switch(index){
      case 0:
        return sectorTagsa1;
        break;
      case 1:
        return sectorTagsa2;
        break;
      case 2:
        return sectorTagsa3;
        break;
      case 3:
        return sectorTagsa4;
        break;
    }
  }

  Color _getColor(index){
    switch(index){
      case 0:
        return Colors.green;
        break;
      case 1:
        return Colors.red;
        break;
      case 2:
        return Colors.black;
        break;
      case 3:
        return Colors.blue;
        break;
    }
  }

  Widget _search(i) =>
      Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
                vertical: 8.0),
            child: Row(
              children: [
                Expanded(
                    child: Container(
                      height: 42,
                      child: TextFormField(
                        controller: _getController(i),
                        validator: (String value) {
                          return _getList(i).isNotEmpty
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
                ),
                SizedBox(
                  width: 5,
                ),
                ElevatedButton(
                    onPressed: () =>
                    {
                      if (_getController(i).text.isNotEmpty) {
                        setState(() {
                          tags.add(TagsList(
                              _getController(i).text,_getColor(i)));
                          _getList(i).add(TagsList(
                              _getController(i).text,_getColor(i)));
                          _getStringList(i).add(_getController(i).text);
                            if (!_keyWords.contains(_getMap(i))) {
                              _keyWords.add(_getMap(i));
                            }
                          _getFilter();
                        }),
                        _getController(i).clear()
                      }
                    },
                    child: Text("+ Add")),
              ],
            ),
          ),
        ],
      );

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
