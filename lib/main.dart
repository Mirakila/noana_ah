import 'package:flutter/material.dart';
import 'package:noana/routes/routes.dart';
import 'package:noana/screens/authentification/sign.dart';
import 'package:noana/screens/authentification/sign_in.dart';
import 'package:noana/screens/authentification/sign_up.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation Over Screens',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
//      home: MainPage(),

      // Declare routes
      routes: routes,

      initialRoute: '/sign',
    );
  }
}
