import 'package:exam_flutter/pages/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "My App Flutter",
      home: MyHomePage(title: '',),
      debugShowCheckedModeBanner: false,
    );
  }
}



