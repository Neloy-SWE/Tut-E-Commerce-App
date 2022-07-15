import 'package:flutter/material.dart';
import '../presentation/resources/theme_manager.dart';

class MyApp extends StatefulWidget {
  //const MyApp({Key? key}): super(key: key);

  int appState = 0;

  // private name constructor
  MyApp._internal();

  // single instance -- singleton
  static final MyApp instance = MyApp._internal();

  factory MyApp() => instance;

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: getApplicationTheme(),
    );
  }
}
