import 'package:flutter/material.dart';
import 'package:projects/first.dart';
import 'package:projects/login_page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LoginPage(),
    theme: ThemeData(
      primarySwatch: Colors.grey,
    ),
  ));
}

