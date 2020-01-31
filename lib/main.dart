import 'package:database_app/homepage.dart';
import 'package:database_app/loginpage.dart';
import 'package:database_app/signuppage.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
      routes: <String, WidgetBuilder>{
        '/landingpage': (BuildContext context)=> new MyApp(),
        '/signup' : (BuildContext context)=>new SignupPage(),
        '/homepage' : (BuildContext context)=> new HomePage(),
      },
      
    );
  }
}