import 'package:flutter/material.dart';
import 'package:oakly/LoginPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Furniture App',
        theme: ThemeData(
        appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(color: Colors.black),
    ),),
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

