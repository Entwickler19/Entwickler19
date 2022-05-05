import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/utilities/routes.dart';
import 'pages/pages/home_page.dart';
import 'pages/pages/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: Homepage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.amber),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      initialRoute: "/loginpage",
      routes: {
        "/": (context) => Login(),
        MyRoutes.loginRoute: (context) => Login(),
        MyRoutes.homeRoute: (context) => Homepage(),
      },
    );
  }
}
