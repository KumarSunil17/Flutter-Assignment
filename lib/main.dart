import 'package:flutter/material.dart';
import 'package:assignment_app/profile_screen.dart';
import 'package:assignment_app/login_screen.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Assignment',
      routes: <String,WidgetBuilder>{
        'profile':(context)=>ProfileScreen(),
      },
      home: LoginScreen(),
      theme: ThemeData(
          primaryColor: Colors.blue
      ),
    );
  }
}
