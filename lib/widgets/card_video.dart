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
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(4)),
          border: Border.all(
            color: const Color(0xFFF1F1F1),
            width: 1,
          )),

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
          SizedBox(height: 20),

          ///Entities
          ListEntities(numberOfVisibleEntities: 3,listEntities: listEntitiesConfirmed),
          SizedBox(height: 10),

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
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: SizedBox(
                          height: 100,
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
    );
    throw UnimplementedError();
  }
}
