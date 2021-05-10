import 'package:flutter/material.dart';
import 'package:marketpulse_ui/widgets/vertical_bar.dart';

class AnalysePreview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Flexible(flex: 3, child: SizedBox.expand()),
        Flexible(
          flex: 1,
          child: SizedBox(
            height: 600,
            child: Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
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
                          Navigator.pop(context);
                        },
                        style: TextButton.styleFrom(
                          primary: Colors.black,
                        ),
                        child: Icon(Icons.cancel),
                      )),
                  Flexible(
                    child: Container(
                      decoration: new BoxDecoration(
                        color: Colors.white,
                        borderRadius: new BorderRadius.only(
                          bottomLeft: const Radius.circular(8.0),
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
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 12.0),
                        child: ListView(
                          // Important: Remove any padding from the ListView.
                          padding: EdgeInsets.zero,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "ANALYSE PREVIEW",
                                  style: TextStyle(
                                    fontFamily: 'Ubuntu',
                                    fontSize: 25,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Text(
                                  "Full analyse view on the analyse section",
                                  style: TextStyle(
                                      fontFamily: 'Ubuntu',
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.grey),
                                ),
                              ],
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 15.0),
                              child: Card(
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Flexible(
                                            flex: 1,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Container(
                                                  decoration:
                                                      new BoxDecoration(
                                                          color: Colors.grey,
                                                          shape: BoxShape
                                                              .circle),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: Icon(
                                                        Icons.trending_up,
                                                        color: Colors.white),
                                                  )),
                                            )),
                                        Flexible(
                                            flex: 3,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Overall Trends",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w700),
                                                ),
                                                Text(
                                                  "Updated 3 hours ago",
                                                  style: TextStyle(
                                                      color: Colors.grey),
                                                )
                                              ],
                                            ))
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Divider(),
                                    ),

                                    for (int i = 0; i < hardData.length; i++)
                                      Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: hardData[i].entity == "IT Terms" ? Colors.black: Colors.red ,
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              20)),
                                                ),
                                                child: Padding(
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      horizontal: 10,
                                                      vertical: 5),
                                                  child: Text(
                                                    hardData[i].name,
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 14,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Row(
                                              children: [
                                                Flexible(
                                                  flex: 1,
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        "${hardData[i].value}",
                                                        style: TextStyle(
                                                            color:
                                                                Colors.black,
                                                            fontSize: 20),
                                                      ),
                                                      Text(
                                                        "${hardData[i].thisWeek}% this week",
                                                        style: TextStyle(
                                                            color:
                                                                Colors.grey,
                                                            fontSize: 10),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                Flexible(
                                                  flex: 4,
                                                  child: SizedBox(
                                                      height: 100,
                                                      child: VerticalBarLabelChart
                                                          .withSampleData()),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                  ],
                                ),
                              ),

                            ),

                            Padding(
                              padding: const EdgeInsets.symmetric(vertical:15.0),
                              child: Card(
                              child:
                                  Column(
                                    children:[
                                      Row(
                                        children: [
                                          Flexible(
                                              flex: 1,
                                              child: Padding(
                                                padding:
                                                const EdgeInsets.all(8.0),
                                                child: Container(
                                                    decoration:
                                                    new BoxDecoration(
                                                        color: Colors.grey,
                                                        shape: BoxShape
                                                            .circle),
                                                    child: Padding(
                                                      padding:
                                                      const EdgeInsets.all(
                                                          8.0),
                                                      child: Icon(
                                                          Icons.trending_up,
                                                          color: Colors.white),
                                                    )),
                                              )),
                                          Flexible(
                                              flex: 3,
                                              child: Column(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "IT Trends",
                                                    style: TextStyle(
                                                        fontWeight:
                                                        FontWeight.w700),
                                                  ),
                                                  Text(
                                                    "Updated 3 hours ago",
                                                    style: TextStyle(
                                                        color: Colors.grey),
                                                  )
                                                ],
                                              ))
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Divider(),
                                      ),

                                      for (int i = 0; i < hardData.length; i++)
                                if(hardData[i].entity == "IT Terms")
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: hardData[i].entity == "IT Terms" ? Colors.black: Colors.red ,
                                              borderRadius:
                                              BorderRadius.all(
                                                  Radius.circular(
                                                      20)),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets
                                                  .symmetric(
                                                  horizontal: 10,
                                                  vertical: 5),
                                              child: Text(
                                                hardData[i].name,
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Flexible(
                                              flex: 1,
                                              child: Column(
                                                crossAxisAlignment:
                                                CrossAxisAlignment
                                                    .start,
                                                children: [
                                                  Text(
                                                    "${hardData[i].value}",
                                                    style: TextStyle(
                                                        color:
                                                        Colors.black,
                                                        fontSize: 20),
                                                  ),
                                                  Text(
                                                    "${hardData[i].thisWeek}% this week",
                                                    style: TextStyle(
                                                        color:
                                                        Colors.grey,
                                                        fontSize: 10),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Flexible(
                                              flex: 4,
                                              child: SizedBox(
                                                  height: 100,
                                                  child: VerticalBarLabelChart
                                                      .withSampleData()),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),])
                              ),
                            )],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    ));
  }

  final hardData = [
    new TrendingItem("Data Center Visualization", "IT Terms", 537, 10),
    new TrendingItem("Middle Ware", "Phone number", 233, 10),
    new TrendingItem("Apprenda", "Organization", 198, -10),
  ];
}

class TrendingItem {
  final String entity;
  final String name;
  final int value;
  final int thisWeek;

  TrendingItem(this.name, this.entity, this.value, this.thisWeek);
}
