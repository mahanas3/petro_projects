import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petro_projects/routs/routenavigation.dart';
import 'package:petro_projects/routs/routnames.dart';

void main() {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
          appBarTheme: AppBarTheme(
              color: Colors.white,
              titleTextStyle: TextStyle(
                  color: Colors.indigo[900],
                  fontFamily: 'PlayFair',
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                  fontSize: 15))),
      debugShowCheckedModeBanner: false,
      initialRoute: RouteName.loginRoute,
      getPages: RouteNavigation.routes,
    );
  }
}
