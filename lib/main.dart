// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:vehicle_rental_app/view/bottom_bar_page/bottom_bar_page.dart';
import 'package:vehicle_rental_app/view/favs_page/favs_page.dart';
import 'package:vehicle_rental_app/view/home_page/home_page.dart';
import 'package:vehicle_rental_app/view/register_screen/register_screen.dart';
import 'package:vehicle_rental_app/view/splash_screen/splash_screen.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      // home: HomePage(),
      // home: BottomBar(),
      // home: FavPage(),
    );
  }
}
