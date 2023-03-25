import 'package:flutter/material.dart';
import 'package:untitled/UI/pages/ProfilePage.dart';

void main() {
  runApp(MaterialApp(
    debugShowMaterialGrid: false,
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      fontFamily: 'Nunito',
    ),
    initialRoute: 'LoginPage',
    routes: {
      'LoginPage': (context) => const ProfilePage(),
    },
  ));
}
