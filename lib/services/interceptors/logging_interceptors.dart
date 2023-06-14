import 'package:dio/dio.dart';


import '../../common_widget/progresswidget_collection.dart';
import '../../main.dart';
import '../../preferences/pref_repository.dart';

class LoggingInterceptor extends Interceptor {
  @override
  Future<void> onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    print('\n');
   // ProgressWidgetsCollection(NavigationService.navigatorKey.currentContext!).startLoader();

    print('--> ${options.method.toUpperCase()} ${'' + (options.baseUrl) + (options.path)}');
  //  options.headers.forEach((k, dynamic v) => print('$k: $v'));
    // if (options.queryParameters != null) {
    //   print('queryParameters:');
    //   options.queryParameters.forEach((k, dynamic v) => print('$k: $v'));
    // }
   /* final _prefRepo = PrefRepository();
    var token = await _prefRepo.getLoginUserData();

    if(token != null){
      print('Headers:',);
      print(token.data?.token);
      options.headers['Authorization'] = 'Bearer ${token.data!.token}';
    }*/


    options.headers['Content-Type'] = 'application/json';
    options.headers['Accept'] = 'application/json';

    print('queryParameters:');
   /* options.queryParameters.forEach((k, dynamic v) => print('$k: $v'));
    if (options.data != null) {
      print('Body: ${options.data}');
    }*/
    print('--> END ${options.method.toUpperCase()}');

    super.onRequest(options, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    print('\n');
    print('<-- ${err.message} ${err.response != null ? err.response?.realUri.path : 'Unknown Path'}');
    print('${err.response != null ? err.response?.data : 'Unknown Error'}');
    print('<-- End error');
   // ProgressWidgetsCollection(NavigationService.navigatorKey.currentContext!).stopLoader();

    super.onError(err, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    print('\n\n');
    print('<--- HTTP CODE : ${response.statusCode} URL : ${response.realUri.path}');
    print('Headers: ');

   // ProgressWidgetsCollection(NavigationService.navigatorKey.currentContext!).stopLoader();



  //  print(response1.meta?.message);
    print('<--- END HTTP');


    super.onResponse(response, handler);
  }
}
