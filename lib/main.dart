import 'package:acadallydemo/routes/routes.dart';
import 'package:acadallydemo/services/interceptors/logging_interceptors.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'constant/const_color.dart';

void main() {
  runApp(const MyApp());
}
String initialRoute = '/';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      navigatorKey: NavigationService.navigatorKey, // set property
      title: 'Acadally Demo',
      debugShowCheckedModeBanner: false,
      theme: lightTheme(),
      themeMode: ThemeMode.light,
      initialRoute: initialRoute,
      getPages: pages(),
      initialBinding: InitialBindings(),
    );
  }
}

ThemeData lightTheme() {
  var baseTheme = ThemeData.light();
  baseTheme.textTheme.apply(fontFamily: 'Inter');
  baseTheme.copyWith(
      scaffoldBackgroundColor: white,
      colorScheme: baseTheme.colorScheme.copyWith(
        primary: Colors.white,
        secondary: Colors.white,
        onSecondary: Colors.white,
      ));

  return baseTheme;
}

class NavigationService {
  static GlobalKey<NavigatorState> navigatorKey =
  GlobalKey<NavigatorState>();
}

class InitialBindings extends Bindings {
  Dio _dio() {
    var dio = Dio();

    dio.interceptors.addAll([
      LoggingInterceptor(),
    ]);

    return dio;
  }

  @override
  void dependencies() {
    Get.put(_dio());
  }
}

