import 'package:flutter/material.dart';
import 'package:marketpulse_ui/CardRFP.dart';
import 'package:marketpulse_ui/ListTags.dart';

final  List<String> listTagConfirmed = List<String>.generate(20, (i) => "Item $i");

class CardSound extends StatelessWidget {
  final String name;
  final List<Widget> listSounds;

  @override
  CardSound({
    this.name = "Missing Name",
    listSounds,
  }) /// List of fake Sounds and Rfp, here 2
      : listSounds = listSounds ??
            List<Widget>.generate(2, (i) => CardRFP(displayAsCard: false));

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: const Color(0xFFF1F1F1),
      ),
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
                                text: 'Sounds results for',
                                style: TextStyle(
                                  fontFamily: 'Ubuntu',
                                  fontSize: 22,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                ),
                                children: <TextSpan>[
                                  TextSpan(
                                      text: ' ${name} (${listSounds.length})',
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

          ///Tags
          ListTags(numberOfVisibleTags: 3,listTags: listTagConfirmed),
          SizedBox(height: 10),

          ///CardRfp with associated sounds
          Container(
            child: Column(
              children: [
                for (var index in listSounds)
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
                        flex: 2,
                        child:
                          listSounds[listSounds.indexOf(index)]
                        ),
                    ],
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
