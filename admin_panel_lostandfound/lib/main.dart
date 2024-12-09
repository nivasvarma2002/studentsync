import 'package:flutter/material.dart';
import 'login.dart';

void main() {
  runApp(StudentSyncApp());
}

class StudentSyncApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'StudentSync Admin Panel',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        brightness: Brightness.light,
        textTheme: TextTheme(
          headline1: TextStyle(color: Colors.teal, fontWeight: FontWeight.bold),
        ),
      ),
      home: LoginPage(),
    );
  }
}
