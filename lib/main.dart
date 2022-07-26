import 'package:flutter/material.dart';
import 'package:petology/screens/adaption_2_screen.dart';

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
      home: const Adaption2Screen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
//////////