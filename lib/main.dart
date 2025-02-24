import 'package:bsnl/Screens/BSNL.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Day 1 - BSNL Screen ',
      debugShowCheckedModeBanner: false,
      home: BSNL()
    );
  }
}


