import 'package:flutter/material.dart';
import 'package:primeiro/login_page.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Primeiro App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepPurple,),
      home: LoginApp(),
    );
  }
}
