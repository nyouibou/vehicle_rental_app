// ignore_for_file: prefer_const_constructors

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:vehicle_rental_app/utils/color_constants/color_constants.dart';
import 'package:vehicle_rental_app/view/bottom_bar_page/bottom_bar_page.dart';
import 'package:vehicle_rental_app/view/home_page/home_page.dart';

class LottieSampleScreen extends StatefulWidget {
  const LottieSampleScreen({super.key});

  @override
  State<LottieSampleScreen> createState() => _LottieSampleScreenState();
}

class _LottieSampleScreenState extends State<LottieSampleScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => BottomBar()));
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainbackgroundgreen,
      body: Center(
        child: ListView(
          children: [
            Lottie.asset("assets/images/Animation - 1710774220936.json"),
            Center(
              child: Text(
                "Find your Vehicle!",
                style: TextStyle(
                    color: ColorConstants.mainWhite,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
