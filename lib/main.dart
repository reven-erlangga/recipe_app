import 'package:flutter/material.dart';
import 'package:recipe_app/views/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recipe App',
      theme: ThemeData(
          primarySwatch: Colors.indigo,
          primaryColor: Colors.white,
          textTheme: TextTheme(bodyText2: TextStyle(color: Colors.white))),
      home: HomePage(),
    );
  }
}
