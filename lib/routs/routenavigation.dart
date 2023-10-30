import 'package:get/get.dart';
import 'package:petro_projects/routs/routnames.dart';
import '../screens/loginpage.dart';
import '../screens/navigationpage.dart';

class RouteNavigation {
  static final List<GetPage> routes = [
    GetPage(name: RouteName.loginRoute, page: () => LoginPage()),
    GetPage(name: RouteName.homeRoute, page: () =>  NavigationPage())
  ];
}


