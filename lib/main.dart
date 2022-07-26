import 'package:flutter/material.dart';
import 'package:petology/screens/login_screen.dart';
import 'package:petology/screens/signup_screen.dart';

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
      home: SignupScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
