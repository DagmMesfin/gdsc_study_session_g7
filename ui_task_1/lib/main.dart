import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ui_task_1/home_page.dart';
import 'package:ui_task_1/second_page.dart';
import 'package:ui_task_1/third_page.dart';
import 'package:ui_task_1/widgets/provider.dart';

void main() {
  runApp(ChangeNotifierProvider<TodoListProvider>(
    child: const MyApp(),
    create: (_) => TodoListProvider(), // Create a new ChangeNotifier object
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ToDo App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      routes: {
        '/second': (context) => MySecondPage(title: "ToDo List"),
        '/third': (context) => MyThirdPage(title: "Create New Task"),
      },
    );
  }
}
