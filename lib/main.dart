import 'package:flutter/material.dart';
import 'page1.dart';
void main()=>runApp(const MyApp());

class MyApp extends StatelessWidget { //stl
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
    debugShowCheckedModeBanner: false,
    title:'Week 7',
    home:Page1(),
    );
  }
}