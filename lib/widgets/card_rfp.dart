import 'package:flutter/material.dart';
import 'package:marketpulse_ui/model/tags_data.dart';
import 'package:marketpulse_ui/widgets/list_entity.dart';

import 'list_entities.dart';

class CardRFP extends StatelessWidget {
  final String title;
  final String description;
  final String source;
  final String link;
  final DateTime date;
  final bool displayAsCard;
  final Function onClick;



//  final List<String> listEntitiesConfirmed;

  final List Organisation;
  final List ITTerms;
  final List Software;
  final List Cybersecurity;

  @override
  CardRFP({
    this.title = "Missing Title",
    this.description = "Missing Description",
    this.source = "Unknown Source",
    this.link = "Unknown",
    this.date,
    this.displayAsCard = true, /// if true: prints the tags and the buttons. Usefull when calling CardRfp for other cards such as CardSound or CardVideo.
//    this.listEntitiesConfirmed,
    this.onClick,
    this.Organisation,
    this.ITTerms,
    this.Software,
    this.Cybersecurity,
  });///List of fake Tags
//    : listEntitiesConfirmed =listEntitiesConfirmed ?? List<String>.generate(30, (i) => "Item $i");

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child:
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
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
            if (displayAsCard)
//            ListEntities(numberOfVisibleEntities: 4,listEntities: listEntitiesConfirmedTitle,),
              ListEntitiy([(TagsList("Organisation",Colors.green))],[(TagsList("ITTerms",Colors.red))],[(TagsList("Software",Colors.black))],[(TagsList("Cybersecurity",Colors.blue))],4),
            SizedBox(height: 10),


            if (displayAsCard)
//              ListEntities(numberOfVisibleEntities: 4,listEntities: listEntitiesConfirmed),
              ListEntitiy(Organisation.length>0?Organisation.map((e)=> TagsList(e,Colors.green)).toList():[] ,ITTerms.length>0?ITTerms.map((e)=> TagsList(e,Colors.red)).toList():[] ,Software.length>0?Software.map((e)=> TagsList(e,Colors.black)).toList():[] ,Cybersecurity.length>0?Cybersecurity.map((e)=> TagsList(e,Colors.blue)).toList() :[],4),
            SizedBox(height: 10),

            ///Buttons
            Row(
              children: [
                if (displayAsCard)
                ElevatedButton(
                  onPressed: () {onClick();},
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
      ),
    );
  }
}
