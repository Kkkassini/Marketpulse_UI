import 'package:flutter/material.dart';

import 'ListEntities.dart';

class CardRFP extends StatelessWidget {
  final String title;
  final String description;
  final String source;
  final String link;
  final DateTime date;
  final bool displayAsCard;


  final List<String> listEntitiesConfirmed;
  @override
  CardRFP({
    this.title = "Missing Title",
    this.description = "Missing Description",
    this.source = "Unknown Source",
    this.link = "Unknown",
    this.date,
    this.displayAsCard = true, /// if true: prints the tags and the buttons. Usefull when calling CardRfp for other cards such as CardSound or CardVideo.
    listEntitiesConfirmed,
  })///List of fake Tags
    : listEntitiesConfirmed =listEntitiesConfirmed ?? List<String>.generate(30, (i) => "Item $i");

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
      child:
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// Title, Link, Date and Source
          Container(
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(title,
                            style: TextStyle(
                              fontFamily: 'Ubuntu',
                              fontSize: 22,
                              color: Colors.blue,
                              fontWeight: FontWeight.w700,
                            )),
                      ),
                      Row(
                        children: [
                          Text(source,
                              style: TextStyle(
                                fontFamily: 'Ubuntu',
                                fontSize: 12,
                                color: Colors.grey,
                                fontWeight: FontWeight.w400,
                              )),
                          Spacer(),
                          Text("15.02.2021",
                              style: TextStyle(
                                fontFamily: 'Ubuntu',
                                fontSize: 12,
                                color: Colors.grey,
                                fontWeight: FontWeight.w400,
                              )),
                          Spacer(),
                          Text(link,
                              style: TextStyle(
                                fontFamily: 'Ubuntu',
                                fontSize: 12,
                                color: Colors.grey,
                                fontWeight: FontWeight.w400,
                              )),
                          Spacer(flex: 30),
                        ],
                      ),
                    ],
                  ),
                ),
                if (displayAsCard)
                Align(
                  alignment: Alignment.bottomRight,
                  child:
                  Icon(Icons.share, color: Colors.grey, size: 24),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),

          /// Description
          Container(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Description:",
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  fontFamily: 'Ubuntu',
                  fontSize: 14,
                  color: Colors.grey,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                description,
                style: TextStyle(
                  fontFamily: 'Ubuntu',
                  fontSize: 14,
                  color: Colors.grey,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          )),
          SizedBox(height: 10),

          ///Entities
          ListEntities(numberOfVisibleEntities: 3,listEntities: listEntitiesConfirmed),
          SizedBox(height: 10),

          ///Buttons
          Row(
            children: [
              if (displayAsCard)
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                ),
                child: Text("Analyse",
                    style: TextStyle(
                      color: Colors.white,
                    )),
              ),
              if (displayAsCard)
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                        side: BorderSide(color: const Color(0xFFF1F1F1), width: 0.2)
                  ),
                  child: Text("Tag and annot",
                      style: TextStyle(
                        color: Colors.blue,
                      )),
                ),
              ),
            ]
          ),
        ],
      ),
    );
    throw UnimplementedError();
  }
}
