import 'package:flutter/material.dart';

class DocumentDetail extends StatefulWidget {
  dynamic data;
  Function onClick;
  Function onClick2;

  DocumentDetail(this.data, this.onClick,this.onClick2);

  @override
  _DocumentDetailState createState() => _DocumentDetailState();
}

class _DocumentDetailState extends State<DocumentDetail> {


  List len =[];
  List len1 =[];
  Map themes;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    len = widget.data["_source"]["themes"].keys.toList();
    len1 = widget.data["_source"]["themes"].values.toList();
//    themes = widget.data["_source"]["themes"].sublist(0,10);
  }


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(width: 5,),
                ElevatedButton(
                  onPressed: () => widget.onClick(),
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Icon(
                          Icons.arrow_back_ios,
                          size: 20,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Back",
                          style: TextStyle(color: Colors.black, fontSize: 14),
                        )
                      ],
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.grey,
                  ),
                ),
                Expanded(child: SizedBox()),
                ElevatedButton(
                  onPressed: () {},
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Icon(Icons.arrow_back_ios,
                            size: 20, color: Color(0xFF33E1Ed)),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "TAG AND ANNOT",
                          style: TextStyle(color: Colors.blue, fontSize: 14),
                        )
                      ],
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      side:
                          BorderSide(color:Colors.blue, width: 0.2)),
                ),
                SizedBox(width: 5,),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Stack(
              children: [
                Card(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          padding: EdgeInsets.all(30),
                          child: Column(
                            children: [
                              Text("AIRBUS",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w700),maxLines: 1,),
                              SizedBox(height: 10,),
                              ElevatedButton(
                                onPressed: () => widget.onClick2(),
                                child: Container(
                                    padding: EdgeInsets.all(10),
                                    child:
                                    Text(
                                      "GO TO CLIENT VIEW",
                                      style: TextStyle(color: Colors.white, fontSize: 20),
                                      maxLines: 1,)
                                ),
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.blue,
                                    side:
                                    BorderSide(color: Colors.blue, width: 0.2)),
                              ),
                            ],
                          ),
                        ),
                      Container(
                        margin: EdgeInsets.only(top: 20,bottom: 20),
                        height: 100,
                        child: VerticalDivider(
                          width: 0.5,
                          color: Colors.black,
                        ),
                      ),

                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(30),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Document Preview",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w700),maxLines: 1,),
                              SizedBox(height: 10,),
                              Text(widget.data["_source"]["filename"],style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,color: Colors.blue),maxLines: 1,),
                              SizedBox(height: 10,),
                              Text(widget.data["_source"]["creationdate"],style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700),maxLines: 1,)
                            ],
                          ),

                        ),
                      ),

                    ],
                  ),
                ),
                Positioned(
                  right: 30,
                  top: 10,
                  child: Container(
                    margin: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(40),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black12,
                              offset: Offset(0.0, 15.0), //阴影xy轴偏移量
                              blurRadius: 15.0, //阴影模糊程度
                              spreadRadius: 1.0 //阴影扩散程度
                          )
                        ]),
                    child: ElevatedButton(
                      onPressed: () {},
                      child:
                      Container(
                        padding: EdgeInsets.all(15),
                        child:Row(
                          children: [
                            Icon(Icons.add,
                                size: 20, color: Colors.black),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "ADD A DOCUMENT TO COMPASE",
                              style: TextStyle(color: Colors.black, fontSize: 14),
                              maxLines: 1,  )
                          ],
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              side: BorderSide.none,
                              borderRadius: BorderRadius.all(Radius.circular(50))),
                          primary: Colors.white,
                          side:
                          BorderSide(color: Colors.white, width: 0.2)),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Card(
                child: Container(
                  padding: EdgeInsets.all(30),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Summary",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),
                      SizedBox(height: 20,),
                      Text(widget.data["_source"]["summary"]
                          ,style: TextStyle(fontSize: 14,color: Colors.grey))
                    ],
                  )
                ),
              ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 600,
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Card(
                      child: Container(
                        padding: EdgeInsets.all(30),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [Text("TOP 10 CONTENT",style: TextStyle(fontSize: 20),), Text("most relevant key words",style: TextStyle(color: Colors.blue, fontSize: 14),)],
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child:Container(

                                    height: 30,
//                                  margin: EdgeInsets.only(top: 15),//根据需求自定义

                                    padding: EdgeInsets.only(left: 10),//根据需求自定义

                                    //设置边框，参数自定义

                                    decoration: BoxDecoration(

                                      border: Border.all(color: Colors.black38, width: 1),

                                      //边框圆角设置

                                      borderRadius: BorderRadius.vertical(

                                          top: Radius.elliptical(4, 4),

                                          bottom: Radius.elliptical(4, 4)),

                                    ),

                                    //

                                    child: DropdownButton(
                                      isExpanded: true,//文本 与 图标 间距样式 在此处设置！！！！ true为最大间距，false为默认
                                      hint: new Text("More use",style: TextStyle(fontSize: 12),), // 当没有初始值时显示
//                                    value: "1", // 设置初始值，方便设置默认选项。并且DropdownMenuItem中的value要有该值，不然会报错
                                      //选中后的回调，根据自己的情况用Statefull或Provider管理状态
                                      onChanged: (selectValue) {
                                        setState(() {
                                          //此处的value是自定义的

                                        });
                                      },
                                      elevation: 8, //设置阴影，只识别1、2、3、4、6、8、9、12、16、24。其他值无效
                                      icon: Icon(Icons.arrow_drop_down),//图标，可自定义
                                      iconSize: 30,//设置图标大小
                                      underline: Container(color: Colors.white),
                                      items: <DropdownMenuItem<String>>[
                                        DropdownMenuItem(
                                          child: Text(
                                            "test",
                                            style: TextStyle(
                                              //此处的value是自定义的
                                              fontSize: 12,
                                              color: Colors.blue,
                                            ),
                                          ),
//                                        value: "1"
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                              SizedBox(height: 20,),
                              Expanded(
                                child: ListView.builder(
                                    itemBuilder: (ctx, index) {
                                      return Container(
                                        padding: EdgeInsets.only(top: 8,bottom: 8),
                                          child:Column(
                                            children: [
                                              Row(
                                                children: [
                                                  Text(len[index]),
                                                  Expanded(child: SizedBox()),
                                                  Text("${len1[index]}")
                                                ],
                                              ),
                                              SizedBox(height: 5,),
                                              SizedBox(
                                              //限制进度条的高度
                                              height: 4.0,
                                              //限制进度条的宽度
                                              child: new LinearProgressIndicator(
                                              //0~1的浮点数，用来表示进度多少;如果 value 为 null 或空，则显示一个动画，否则显示一个定值
                                              value: 1/(index+1),
                                              //背景颜色
                                              backgroundColor: Colors.grey,
                                              //进度颜色
                                              valueColor: new AlwaysStoppedAnimation<Color>(Colors.blue)),
                                              ),
                                            ],
                                          )
                                      );
                                    },
                                    itemCount: len.length,
                                 ),
                              ),

                            widget.data["_source"]["misunderstood"].length>10 && len.length<=10 ?GestureDetector(onTap: (){
//                              setState(() {
//                                len = widget.data["_source"]["misunderstood"];
//                              });
                            },
                                child: Container(padding:EdgeInsets.all(20),alignment:Alignment.center,child: Text("SEE MORE",style: TextStyle(color: Colors.blue),)))
                                :Container()
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
//                  Expanded(flex: 1, child: CustomCard(widget.data["_source"]["misunderstood"],"META","Select which meta's content to display")),
//                  SizedBox(
//                    width: 10,
//                  ),
                  Expanded(flex: 1, child: CustomCard("TAG","Select which tag's content to display",widget.data["_source"]["entities"],["All","Organisation","ITTerms","Software","Cybersecurity"])),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CustomCard extends StatefulWidget {
  final List _selectTitle;
  final Map _map;
  final String _title;
  final String _desc;

  CustomCard(this._title,this._desc,this._map,this._selectTitle) ;

  @override
  _CustomCardState createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {

  List _current;
  int _value = 0;
  List all = [];

  List l1 = [];
  List l2 = [];
  List l3 = [];
  List l4 = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    l1 = widget._map["Organisation"] ?? [];
    l2 = widget._map["ITTerms"] ??[];
    l3 = widget._map["Software"] ??[];
    l4 = widget._map["Cybersecurity"] ?? [];
    all.addAll(l1);
    all.addAll(l2);
    all.addAll(l3);
    all.addAll(l4);
    _current = all ?? [];
    _value = 0;
  }

  List _getCurrent(int i) {
    switch(i){
      case 0:
        return all ??[];
        break;
      case 1:
        return l1;
        break;
      case 2:
        return l2;
        break;
      case 3:
        return l3;
        break;
      case 4:
        return l4;
        break;
    }
  }


  String _getText(int i,int index) {
    switch(i){
      case 0:
        if (all.length==0) {
          return "";
        }
       if (index>=0 && l1.length>0&& index < l1.length) {
         return "Organisation";
       }else if(index>=l1.length && l2.length+l1.length>0 &&index <l2.length+l1.length ){
         return "ITTerms";
       }else if(index>=l2.length+l1.length && l3.length+l2.length+l1.length>0 && index <l3.length+l2.length+l1.length){
         return "Software";
       }else if(index>=l3.length+l2.length+l1.length &&l4.length+l3.length+l2.length+l1.length>0 && index <l4.length+l3.length+l2.length+l1.length){
         return "Cybersecurity";
       }else{
         return "";
       }
       break;
      case 1:
        return "Organisation";
        break;
      case 2:
        return "ITTerms";
        break;
      case 3:
        return "Software";
        break;
      case 4:
        return "Cybersecurity";
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(widget._title,style: TextStyle( fontSize: 20),),
            SizedBox(
              height: 10,
            ),
            Text(widget._desc,style: TextStyle(color: Colors.grey, fontSize: 14),),
            SizedBox(
              height: 20,
            ),
            Container(
//                                  margin: EdgeInsets.only(top: 15),//根据需求自定
              padding: EdgeInsets.only(left: 15),//根据需求自定义

              //设置边框，参数自定义

              decoration: BoxDecoration(

                border: Border.all(color: Colors.black, width: 1),

                //边框圆角设置

                borderRadius: BorderRadius.vertical(

                    top: Radius.elliptical(4, 4),

                    bottom: Radius.elliptical(4, 4)),

              ),

              //

              child: DropdownButton(
                isExpanded: true,//文本 与 图标 间距样式 在此处设置！！！！ true为最大间距，false为默认
                hint: new Text(widget._title,style: TextStyle(fontSize: 16),), // 当没有初始值时显示

               value:  _value, // 设置初始值，方便设置默认选项。并且DropdownMenuItem中的value要有该值，不然会报错

                //选中后的回调，根据自己的情况用Statefull或Provider管理状态

                onChanged: (selectValue) {

                  setState(() {

                    //此处的value是自定义的
                    _value = selectValue;
                    _current = _getCurrent(selectValue);


                  });

                },

                elevation: 8, //设置阴影，只识别1、2、3、4、6、8、9、12、16、24。其他值无效

                icon: Icon(Icons.arrow_drop_down),//图标，可自定义

                iconSize: 30,//设置图标大小

                underline: Container(color: Colors.white),

                items: <DropdownMenuItem<int>>[

                 for(int i = 0;i<widget._selectTitle.length;i++)
                   DropdownMenuItem(
                     child: Text(
                       widget._selectTitle[i],
                       style: TextStyle(
                         //此处的value是自定义的
                         fontSize: 16,
                         color: Colors.blue,
                       ),
                     ),
                     value: i,
                   ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Colors.black
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(flex: 1,child: Container(child: Text("Datas types",style: TextStyle(color: Colors.white, fontSize: 14)))),
                  Expanded(flex: 1,child: Container(alignment:Alignment.center,child: Text("Content",style: TextStyle(color: Colors.white, fontSize: 14)))),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
           Expanded(
             child: ListView.separated(
                    itemBuilder: (ctx, i) {
                      return Container(
                        padding: EdgeInsets.all(20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                          Expanded(flex: 1,child: Container(child: Text(_current[i],style: TextStyle( fontSize: 14)))),
                      Expanded(flex: 1,child: Container(alignment:Alignment.center,child: Text(_getText(_value,i),style: TextStyle( fontSize: 14)))),
                          ],
                        ),
                      );
                    },
                    separatorBuilder: (context, index) => SizedBox(
                        height: 20,
                        child: Divider(
                          height: 1,
                          color: Colors.grey,
                        )),
                    itemCount: _current.length??0),
           ),
          ],
        ),
      ),
    );
  }
}
