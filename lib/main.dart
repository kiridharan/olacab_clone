import 'package:flutter/material.dart';
import 'package:untitled/UI/pages/Activity.dart';
import 'package:untitled/UI/pages/HomePage.dart';
import 'package:untitled/UI/pages/LoginPage.dart';
import 'package:untitled/UI/pages/ProfilePage.dart';
import 'package:untitled/controller/Navigation.dart';

void main() {
  runApp(MaterialApp(
    debugShowMaterialGrid: false,
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      fontFamily: 'Nunito',
    ),
    initialRoute: 'navigation',
    routes: {
      'navigation': (context) => Navigation(),
      'home': (context) => const HomePage(),
      'loginPage': (context) => const LoginPage(),
      'activity': (context) => const Activity(),
      'profile': (context) => const ProfilePage(),
    },
  ));
}
