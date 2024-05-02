// ignore_for_file: prefer_const_constructors

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:vehicle_rental_app/firebase_options.dart';
import 'package:vehicle_rental_app/view/booknow_page/booknow_page.dart';
import 'package:vehicle_rental_app/view/bottom_bar_page/bottom_bar_page.dart';
import 'package:vehicle_rental_app/view/favs_page/favs_page.dart';
import 'package:vehicle_rental_app/view/first_login/first_login.dart';
import 'package:vehicle_rental_app/view/home_page/description_page.dart';
import 'package:vehicle_rental_app/view/home_page/home_page.dart';
import 'package:vehicle_rental_app/view/lottie_sample_screen/lottie_sample_screen.dart';
import 'package:vehicle_rental_app/view/register_screen/register_screen.dart';
import 'package:vehicle_rental_app/view/splash_screen/splash_screen.dart';

Future<void> main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: SplashScreen(),
      // home: BottomBar(),
      // home: HomePage(),
      // home: LottieSampleScreen(),
      home: BookNow(),
    );
  }
}
