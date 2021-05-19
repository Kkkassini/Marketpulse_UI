import 'package:flutter/material.dart';
import 'package:marketpulse_ui/model/tags_data.dart';

class ListEntitiy extends StatefulWidget {
  final List<TagsList> _Organisation;
  final List<TagsList>  _ITTerms;
  final List<TagsList>  _Software;
  final List<TagsList>  _Cybersecurity;
  int numberOfVisibleEntities;
  
  final List<TagsList> allList = [];

  ListEntitiy(this._Organisation, this._ITTerms, this._Software,
      this._Cybersecurity, this.numberOfVisibleEntities){
    allList.addAll(_Organisation);
    allList.addAll(_ITTerms);
    allList.addAll(_Software);
    allList.addAll(_Cybersecurity);
    if (allList.length==0) {
      numberOfVisibleEntities = 0;
      return;
    }
  }

  @override
  _ListEntitiyState createState() => _ListEntitiyState();
}

class _ListEntitiyState extends State<ListEntitiy> {

  int count;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    count = widget.numberOfVisibleEntities>widget.allList.length?widget.numberOfVisibleEntities-1:widget.numberOfVisibleEntities;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: SizedBox(
//          height: 40,
          child: Wrap(
            children: [
              for(int index = 0; index < count; index++)
                Container(
//                    height: 30,
                    margin: EdgeInsets.all(5.0),
                    padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                    decoration: BoxDecoration(
                      color:  widget.allList[index].tagColor,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
//                    child: Center(
                      child: Text(
                        widget.allList[index].tag,
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
//                    )
                  ),
              widget.allList.length> count ?TextButton(
                  onPressed: () async {
//                    await showAllEntities(context);
                    setState(() {
                      count =widget.allList.length;

                    });
                  },
                  //(){Navigator.push(context, MaterialPageRoute(builder:(context)=> DragAndDrop()));} ,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 10),
                    child: Text(
                      "See ${widget.allList.length - widget.numberOfVisibleEntities} more entities",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                      ),
                    ),
                  )):Container()
              ],

          )
        ));
  }
}
