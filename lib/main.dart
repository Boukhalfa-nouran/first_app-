import 'package:firts_app/homepage.dart';
import 'package:flutter/material.dart';

void main() {
  // hna hta ndiro restrt bch y3wd mn lwl
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Homepage(),
    );
  }
}
