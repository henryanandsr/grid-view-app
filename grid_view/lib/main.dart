import 'package:flutter/material.dart';
import 'package:sehat_semua/main_screen.dart';
import 'detail_screen.dart';
void main() {
 runApp(MyApp());
}

class MyApp extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
   return MaterialApp(
     title: 'Flutter Demo',
     theme: ThemeData(),
     home: MainScreen(),  
  );
 }
}