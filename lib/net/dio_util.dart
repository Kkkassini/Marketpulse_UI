import 'package:dio/dio.dart';

import 'api.dart';

class HttpUtil {
  static final HttpUtil _httpUtil = HttpUtil._init();
  static Dio dio;

  HttpUtil._init() {
    BaseOptions options = new BaseOptions(
      baseUrl: Api.BASE_URL,
      connectTimeout: 30 * 1000,
      receiveTimeout: 30 * 1000,
      sendTimeout: 30 * 1000,);
    dio = Dio(options);
    dio.interceptors.add(InterceptorsWrapper(onRequest: (RequestOptions options) {
      print(
          "\n================================= 请求数据 =================================");
      print("method = ${options.method.toString()}");
      print("url = ${options.uri.toString()}");
      print("headers = ${options.headers}");
      print("data = ${options.data}");
      print("params = ${options.queryParameters}");
    }, onResponse: (Response response) {
      print(
          "\n================================= 响应数据开始 =================================");
      print("code = ${response.statusCode}");
//      print("data = ${response.data}");
      print(
          "================================= 响应数据结束 =================================\n");
    }, onError: (DioError e) {
      print(
          "\n=================================错误响应数据 =================================");
      print("type = ${e.type}");
      print("message = ${e.message}");
      print("stackTrace = ${e.message}");
      print("\n");
    }));
  }

  factory HttpUtil() {
    return _httpUtil;
  }

  get<T>(String path, {String method = "POST",data, params, onSucces, onFail,onFailCode}) async {
    Response response;
    try {
      response = await dio.request(
          path,
          data:data,
          queryParameters: params,
          options: Options(method: method));
      if (response.statusCode == 200) {
        onSucces(response.data);
      } else {
        onFail(response.data);
      }
    } on DioError catch (e) {
      onFail(e.message);
    }
  }
}

typedef onSucces = void Function(dynamic d);
typedef onFail = void Function(String e);