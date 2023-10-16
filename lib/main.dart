import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:test_project/pages/todo_page.dart';

void main() async{
  //init hive
  await Hive.initFlutter();
  
  //open the box
  var box = await Hive.openBox('mybox');
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const ToDoPage(),
      theme: ThemeData(primarySwatch: Colors.yellow),
    );
  }
}