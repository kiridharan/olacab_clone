import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:untitled/UI/pages/Activity.dart';
import 'package:untitled/UI/pages/LoginPage.dart';
import 'package:untitled/UI/pages/home_page.dart';
import 'package:untitled/UI/pages/service_page.dart';

import 'package:untitled/UI/pages/ProfilePage.dart';
import 'package:untitled/UI/pages/settings.dart';
import 'package:untitled/UI/pages/trip_history.dart';
import 'package:untitled/controller/navigation.dart';

void main() {
  runApp(GetMaterialApp(
    key: GlobalKey(),
    home: MaterialApp(
      debugShowMaterialGrid: false,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Nunito',
      ),
      // TODO - Add a login route in production .
      initialRoute: 'navigation',
      routes: {
        '/': (context) => const HomePage(),
        'navigation': (context) => const Navigation(),
        'service': (context) => const ServicePage(),
        'login': (context) => const LoginPage(),
        'activity': (context) => const Activity(),
        'profile': (context) => const ProfilePage(),
        'settings': (context) => const UberSettingsPage(),
        'trip': (context) => const UberTripHistoryPage(),
      },
    ),
  ));
}
