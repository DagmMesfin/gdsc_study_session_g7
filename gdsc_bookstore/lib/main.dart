import 'package:flutter/material.dart';
import 'package:gdsc_bookstore/onboard.dart';
import 'my_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: Onboard(),
      routes: {
        '/second': (context) => MyHomePage(title: 'Flutter Demo Home Page'),
      },
    );
  }
}
