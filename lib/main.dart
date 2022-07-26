import 'package:flutter/material.dart';
import 'package:petology/screens/about_us.dart';
import 'package:petology/screens/adaption.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Petology',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AdaptionScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}