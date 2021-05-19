import 'package:marketpulse_ui/model/tags_list_data.dart';
import 'package:marketpulse_ui/net/dio_util.dart';

class Api{
  static final String BASE_URL = "http://10.24.42.121:9400";



  static final String _INDEX = "/{marketpulse}/_search";


  static getIndex(onSucces succes,onFail fail,int pageStart,int pageEnd,{List<TagList> keywords} ) async{
    return await HttpUtil().get(_INDEX,onSucces: succes,onFail: fail,data:
    {
      "from": pageStart,
      "size": pageEnd,
      "query": {
        "bool" : {
          "must" : keywords
        }
      }
    }
    );
  }

  static getSearch(onSucces succes,onFail fail,int pageStart,int pageEnd,{searchWord = ""} ) async{
    return await HttpUtil().get(_INDEX,onSucces: succes,onFail: fail,data:
    {
      "from": pageStart,
      "size": pageEnd,
      "query": {
        "multi_match" : searchWord,
      }
    }
    );
  }

  static test(onSucces succes,onFail fail) async{
    return await HttpUtil().get(_INDEX,onSucces: succes,onFail: fail);
  }
}
