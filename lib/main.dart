import 'dart:ffi';
import 'dart:ui';
import 'package:e_book/my_home_page.dart';
import 'package:flutter/material.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter audio readings',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,


      ),
      home:  HomePage(),
    );
  }
}




