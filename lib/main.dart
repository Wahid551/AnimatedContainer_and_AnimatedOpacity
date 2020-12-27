import 'package:animation1/Sandbox.dart';
import 'package:flutter/material.dart';
import 'screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wahid Trips',
      home: sandBox(),
    );
  }
}
