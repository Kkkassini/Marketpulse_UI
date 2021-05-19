import 'package:flutter/material.dart';

class ListEntities extends StatelessWidget {
  final Map<Color,List> listEntities;
  int numberOfVisibleEntities;

  List allList = [];


  ListEntities({Key key, this.numberOfVisibleEntities = 10, this.listEntities}): super(key: key){
    listEntities?.forEach((key, value) {
      allList.addAll(value);
    });
    if (allList.length < numberOfVisibleEntities) {
      this.numberOfVisibleEntities = allList.length;
    }
  }




  Future<void> showAllEntities(BuildContext context) async {
    return await showDialog(
        context: context,
        builder: (context) {
          return StatefulBuilder(builder: (context, setState) {
            return AlertDialog(
                content: Container(
                  width: 300,
                  child: ListView(children: [
                    for (int i = numberOfVisibleEntities;
                        i < allList.length;
                        i++)
                      Column(  mainAxisSize: MainAxisSize.min, children: [

                        Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child:
                            Text(allList[i])),
                        Divider()
                      ])
                  ]),
                ));
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
          for (int index = 0; index < (numberOfVisibleEntities>allList.length?numberOfVisibleEntities-1:numberOfVisibleEntities); index++)
            Container(
                height: 20,
                margin: EdgeInsets.all(5.0),
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Center(
                  child: Text(
                    allList[index],
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  ),
                )),
          allList.length>numberOfVisibleEntities?TextButton(
              onPressed: () async {
                await showAllEntities(context);
              },
              //(){Navigator.push(context, MaterialPageRoute(builder:(context)=> DragAndDrop()));} ,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Text(
                  "See ${allList.length - numberOfVisibleEntities} more entities",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                  ),
                ),
              )):Container()
        ],
      ),
    ));
  }
}
