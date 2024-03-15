import 'package:flutter/material.dart';
import 'HomePage.dart' ;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'FInancial Literacy App' ,
      debugShowCheckedModeBanner: false ,
      home: HomePage(),
    );
  }
}
