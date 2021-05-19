
import 'dart:convert';


class TagList {
  
  String t1 ;
  String t2;
  List<String> t3;


  TagList({this.t1 = "terms",this.t2,this.t3});

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is TagList &&
              runtimeType == other.runtimeType &&
              t1 == other.t1 &&
              t2 == other.t2;

  @override
  int get hashCode =>
      t1.hashCode ^
      t2.hashCode;

  @override
  String toString() {
    return '{"$t1":{"$t2":$t3}}';
  }


  Map toJson(){
//    String s = this.toString();
//    print("这是tostring$s");
//    Map map = json.decode(s);
//    print(map);
    Map map = Map();
    map[t1] = {t2:t3};
    return map;
  }
}