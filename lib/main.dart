import 'package:flutter/material.dart';
import 'package:untitled/UI/pages/Activity.dart';
import 'package:untitled/UI/pages/LoginPage.dart';

void main() {
  runApp(MaterialApp(
    debugShowMaterialGrid: false,
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      fontFamily: 'Nunito',
    ),
    initialRoute: 'activity',
    routes: {
      'LoginPage': (context) => const LoginPage(),
      'activity': (context) => const Activity(),
    },
  ));
}
