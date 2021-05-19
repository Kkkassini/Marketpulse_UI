import 'package:flutter/material.dart';
import 'package:marketpulse_ui/provider/ChangeThemeProvider.dart';
import 'package:provider/provider.dart';

List _list = List.generate(10, (index)=>{"name":"name$index","age":"$index","width":"${index*2}","height":"${index+5}","bool":index%3==0});

class TableList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Consumer<ChangeThemeProvider>(
      builder: (ctx,change,_){
        return Flexible(
          flex: 1,
          child: Container(
              margin: EdgeInsets.only(top: 30.0),
              child: Row(
                children: [
                  Flexible(child: Container(height: 600,decoration: BoxDecoration(color:change.widgetBgValue),child: Center(child: Text("Tweet Feeds Area"),)),flex: 3,),
                  SizedBox(width: 10,),
                  Flexible(child:  Container(
                    height: 600,
                    decoration: BoxDecoration(color:change.widgetBgValue),
                    child: ListView.separated(
                      shrinkWrap: true,
                      physics: BouncingScrollPhysics(),
                      separatorBuilder: (context,index)=> index>0?SizedBox(height: 10,child: Divider(height: 1,color: change.dividerValue,),):Container(),
                      itemBuilder: (context,index)=> index==0?TableTitle():TableItem(index-1),
                      itemCount: _list.length+1,
                    ),
                  ),flex: 7,)
                ],
              )
          ),
        );
      },
    );
  }
}




class TableTitle extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Consumer<ChangeThemeProvider>(
        builder: (context,change,_){
      return  Container(
      padding: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
      decoration: BoxDecoration(color: Colors.blue.withOpacity(.2)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(flex:2,child: Text("name",textAlign: TextAlign.center,)),
          Expanded(flex:3,child: Text("age",textAlign: TextAlign.center,)),
          Expanded(flex:2,child: Text("width",textAlign: TextAlign.center,)),
          Expanded(flex:1,child: Text("height",textAlign: TextAlign.center,)),
          Expanded(flex:1,child: Text("bool",textAlign: TextAlign.center,)),
        ],
      ),
    );
  }
  );
  }
}

class TableItem extends StatelessWidget {

  int index;

  TableItem(this.index);

  @override
  Widget build(BuildContext context) {
    return  Container(
          padding: EdgeInsets.all(10),
//      decoration: BoxDecoration(color: Colors.white),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(flex:2,child: Text(_list[index]["name"],textAlign: TextAlign.center,)),
              Expanded(flex:3,child: Text(_list[index]["age"],textAlign: TextAlign.center,)),
              Expanded(flex:2,child: Text(_list[index]["width"],textAlign: TextAlign.center,)),
              Expanded(flex:1,child: Text(_list[index]["height"],textAlign: TextAlign.center,)),
              Expanded(flex:1,child: Container(
                child: ClipOval(
                  child: _list[index]["bool"]?Icon(Icons.arrow_downward):Icon(Icons.arrow_upward)
                ),
              )),
            ],
          ),
        );
  }
}