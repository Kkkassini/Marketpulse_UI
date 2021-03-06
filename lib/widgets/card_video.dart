import 'package:flutter/material.dart';
import 'card_rfp.dart';

import 'list_entities.dart';

final listEntitiesConfirmed = List<String>.generate(20, (i) => "Item $i");

class CardVideo extends StatelessWidget {
  final String name;
  final List<Widget> listVideos;

  @override
  CardVideo({
    this.name = "Missing Name",
    listVideos,
  })

  ///Generating a list of fake CardRfp, here 2
  : listVideos = listVideos ??
            List<Widget>.generate(2, (i) => CardRFP(displayAsCard: false));

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///Title
            Container(
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Align(
                            alignment: Alignment.topLeft,
                            child: RichText(
                              text: TextSpan(
                                  text: 'Videos results for',
                                  style: TextStyle(
                                    fontFamily: 'Ubuntu',
                                    fontSize: 22,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: ' ${name} (${listVideos.length})',
                                        style: TextStyle(
                                          fontFamily: 'Ubuntu',
                                          fontSize: 22,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w700,
                                        )),
                                  ]),
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),

            ///Entities
//            ListEntities(numberOfVisibleEntities: 3,listEntities: listEntitiesConfirmed),
//            SizedBox(height: 10),

            ///CardRfp with Videos
            Container(
              child: Column(
                children: [
                  for (var index in listVideos)
                    Row(
                      children: [
                        Expanded(
                            child: Container(
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: SizedBox(
                            height: 100,
                            child:
                            Center(
                                child: Icon(Icons.play_arrow)
                            ),
                          ),
                        )),
                        Expanded(
                            flex: 5,
                            child: listVideos[listVideos.indexOf(index)]),
                      ],
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
    throw UnimplementedError();
  }
}
