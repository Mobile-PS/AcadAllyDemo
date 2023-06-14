import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get.dart';

import '../login_module/login_screen.dart';

List<GetPage> routes = [

  GetPage(
    name: '/',
    page: () => LoginScreen(),
  ),
 /* GetPage(
    name: '/signup_screen',
    page: () => SignupScreen(),
  ),
  GetPage(
    name: '/dashboard_screen',
    page: () => MyClosetScreen(),
  ),
  GetPage(
    name: '/bottom_screen',
    page: () => BottomNavigation(),
  ),*/
  /*GetPage(
    name: '/main',
    page: () => OnboardingScreen(),
  ),
  GetPage(
    name: '/home',
    page: () => TodayScreen(),
  ),
  GetPage(
    name: '/general_screen',
    page: () => GeneralDetailScreen(),
  ),
  GetPage(
    name: '/dmc_screen',
    page: () => DMCListScreen(),
  ),*/
];

// note that you can create separated file for grouped route
List<GetPage> pages() {
  return routes;
}
