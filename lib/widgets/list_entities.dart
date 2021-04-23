import 'package:flutter/material.dart';

class ListEntities extends StatelessWidget {
  final List<String> listEntities;
  final int numberOfVisibleEntities;

  const ListEntities({Key key, this.numberOfVisibleEntities = 10, this.listEntities})
      : super(key: key);

  Future<void> showAllEntities(BuildContext context) async {
    return await showDialog(
        context: context,
        builder: (context) {
          return StatefulBuilder(builder: (context, setState) {
            return AlertDialog(
                content: SizedBox(
                    height: 300,
                    width: 300,
                    child: ListView(children: [
                      for (int i = numberOfVisibleEntities;
                          i < listEntities.length;
                          i++)
                        Column(children: [
                          Padding(
                              padding: const EdgeInsets.symmetric(vertical: 5),
                              child:
                              Text(listEntities[i])),
                          Divider()
                        ])
                    ])));
          });
        });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: SizedBox(
      height: 40,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          for (int index = 0; index < numberOfVisibleEntities; index++)
            Container(
                height: 20,
                margin: EdgeInsets.all(5.0),
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                decoration: BoxDecoration(
                  color: const Color(0xFF2B0A3D),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Center(
                  child: Text(
                    listEntities[index],
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  ),
                )),
          TextButton(
              onPressed: () async {
                await showAllEntities(context);
              },
              //(){Navigator.push(context, MaterialPageRoute(builder:(context)=> DragAndDrop()));} ,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Text(
                  "See ${listEntities.length - numberOfVisibleEntities} more entities",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                  ),
                ),
              ))
        ],
      ),
    ));
  }
}
