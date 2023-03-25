import 'package:flutter/material.dart';
import 'package:untitled/UI/pages/Activity.dart';
import 'package:untitled/UI/pages/LoginPage.dart';
import 'package:untitled/UI/pages/ProfilePage.dart';

void main() {
  runApp(MaterialApp(
    debugShowMaterialGrid: false,
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      fontFamily: 'Nunito',
    ),
    initialRoute: 'profile',
    routes: {
      'loginPage': (context) => const LoginPage(),
      'activity': (context) => const Activity(),
      'profile': (context) => const ProfilePage(),
    },
  ));
}
