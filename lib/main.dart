import 'package:flutter/material.dart';
import 'package:untitled/pages/HomePage.dart';

void main() {
  runApp(MaterialApp(
    debugShowMaterialGrid: false,
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      fontFamily: 'Nunito',
    ),
    initialRoute: 'LoginPage',
    routes: {
      'LoginPage': (context) => const HomePage(),
    },
  ));
}
