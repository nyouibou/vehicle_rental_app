// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:vehicle_rental_app/utils/color_constants/color_constants.dart';
import 'package:vehicle_rental_app/view/home_page/home_page.dart';
import 'package:vehicle_rental_app/view/lottie_sample_screen/lottie_sample_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainbackgroundgreen,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 100),
        child: Center(
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.grey, width: 3)),
                    label: Text(
                      "email id",
                      style: TextStyle(color: ColorConstants.mainWhite),
                    ),
                    prefixIcon: Icon(
                      Icons.mail,
                      color: Colors.white,
                    )),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.grey, width: 3)),
                    label: Text(
                      "phn no",
                      style: TextStyle(color: ColorConstants.mainWhite),
                    ),
                    prefixIcon: Icon(
                      Icons.phone,
                      color: Colors.white,
                    )),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.grey, width: 3)),
                    label: Text(
                      "password",
                      style: TextStyle(color: ColorConstants.mainWhite),
                    ),
                    prefixIcon: Icon(
                      Icons.password,
                      color: Colors.white,
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LottieSampleScreen(),
                        ));
                  },
                  child: Text(
                    "register",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
