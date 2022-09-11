import 'package:flutter/material.dart';
import 'package:noana/routes/routes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Noana ah !',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),

      // Declare routes
      routes: routes,
      initialRoute: '/sign',
    );
  }
}
