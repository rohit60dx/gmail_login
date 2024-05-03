// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:gmail_login_example/gmail_login.dart';
import 'google_map_example.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      /// home: LoginSample(),
      home: Home(),
      // home: Example(),
      // home: Map_Example(),
      //   home: TableExample(),
    );
  }
}
