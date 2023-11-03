import 'package:flutter/material.dart';
import 'package:minipro/Bar/NavBar.dart';
import 'package:minipro/Log_Re/Dashboard.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFFFCAB0C)),
        useMaterial3: true,
      ),
      home: const Dashboard(),
    );
  }
}

