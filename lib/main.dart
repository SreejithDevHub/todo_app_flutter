import 'package:flutter/material.dart';
import 'package:todo/pages/homepage.dart';
import 'package:hive_flutter/hive_flutter.dart';
void main() async {
  //init the hive

  await Hive.initFlutter();

  //open a box
  var box = await Hive.openBox('mybox');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.yellow),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
