import 'package:flutter/material.dart';

import 'list_entities.dart';

final listEntitiesConfirmed = List<String>.generate(20, (i) => "Item $i");

class CardImage extends StatelessWidget {
  final String name;
  final List<Widget> listImages;

  @override
  CardImage({
    this.name = "Missing Name",
    listImages,
  }) /// List of fake images, here 5
      : listImages = listImages ??
            List<Widget>.generate(
                5, (i) => Image.asset('../assets/defaultImage.png'));

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
                                text: 'Images results for',
                                style: TextStyle(
                                  fontFamily: 'Ubuntu',
                                  fontSize: 22,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                ),
                                children: <TextSpan>[
                                  TextSpan(
                                      text: ' ${name} (${listImages.length})',
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

          ///Images
          SizedBox(
            height: 300,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: listImages.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(5.0),
                            child: listImages[index]),
                      ),
                    ],
                  );
                }),
          ),
        ],
      ),
    );
    throw UnimplementedError();
  }
}
