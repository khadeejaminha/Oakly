import 'package:flutter/material.dart';
import 'package:oakly/loginpage.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'OAKLY Designed Furnitures - Furniture App',
      debugShowCheckedModeBanner: false,
      home: Loginpage(),
    );
  }
}
