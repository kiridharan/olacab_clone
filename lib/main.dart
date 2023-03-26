import 'package:flutter/material.dart';
import 'package:untitled/UI/pages/Activity.dart';
import 'package:untitled/UI/pages/LoginPage.dart';
import 'package:untitled/UI/pages/home_page.dart';
import 'package:untitled/UI/pages/service_page.dart';

import 'package:untitled/UI/pages/ProfilePage.dart';
import 'package:untitled/controller/navigation.dart';

void main() {
  runApp(MaterialApp(
    debugShowMaterialGrid: false,
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      fontFamily: 'Nunito',
    ),
    // TODO - Add a login route in production .
    initialRoute: 'navigation',
    routes: {
      'home': (context) => const HomePage(),
      'navigation': (context) => const Navigation(),
      'home': (context) => const ServicePage(),
      'loginPage': (context) => const LoginPage(),
      'activity': (context) => const Activity(),
      'profile': (context) => const ProfilePage(),
    },
  ));
}
