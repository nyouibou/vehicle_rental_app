// ignore_for_file: prefer_const_constructors

import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:vehicle_rental_app/utils/color_constants/color_constants.dart';
import 'package:vehicle_rental_app/view/lottie_sample_screen/lottie_sample_screen.dart';
import 'package:vehicle_rental_app/view/register_screen/register_screen.dart';

class FirstLogin extends StatefulWidget {
  const FirstLogin({Key? key}) : super(key: key);

  @override
  State<FirstLogin> createState() => _FirstLoginState();
}

class _FirstLoginState extends State<FirstLogin> {
  final formkey = GlobalKey<FormState>();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double verticalPadding = screenHeight * 0.2;

    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      resizeToAvoidBottomInset: false, // Set this to false
      body: SingleChildScrollView(
        // Wrap Scaffold with SingleChildScrollView
        child: Container(
          padding:
              EdgeInsets.symmetric(horizontal: 50, vertical: verticalPadding),
          width: double.infinity,
          decoration: BoxDecoration(
              // color: Colors.red
              // gradient: LinearGradient(
              //   colors: [
              //     ColorConstants.mainBlack,
              //     ColorConstants.mainbackgroundgreen,
              //     ColorConstants.mainBlack,
              //     ColorConstants.mainbackgroundgreen,
              //   ],
              //   begin: Alignment.bottomRight,
              //   end: Alignment.topLeft,
              // ),
              ),
          child: Center(
            child: Container(
              decoration: BoxDecoration(
                  color: ColorConstants.mainWhite,
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              child: Padding(
                padding: const EdgeInsets.all(30),
                child: Form(
                  key: formkey,
                  child: Column(
                    children: [
                      //

                      CircleAvatar(
                        radius: 45,
                        backgroundImage:
                            AssetImage("assets/images/applogo.jpg"),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      //
                      TextFormField(
                        controller: email,
                        style: TextStyle(color: ColorConstants.mainBlack),
                        decoration: InputDecoration(
                          labelText: 'email id',
                          labelStyle:
                              TextStyle(color: ColorConstants.mainBlack),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide:
                                BorderSide(color: ColorConstants.mainBlack),
                          ),
                        ),
                        validator: (value) {
                          if (RegExp(
                                  r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                              .hasMatch(email.text)) {
                            return null;
                          } else {
                            return "enter a valid email";
                          }
                        },
                      ),
                      SizedBox(height: 15),
                      TextFormField(
                        controller: password,
                        style: TextStyle(color: ColorConstants.mainBlack),
                        decoration: InputDecoration(
                          labelText: 'Password',
                          labelStyle:
                              TextStyle(color: ColorConstants.mainBlack),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide:
                                BorderSide(color: ColorConstants.mainBlack),
                          ),
                        ),
                        validator: (value) {
                          if (value != null && value.length >= 6) {
                            return null;
                          } else {
                            return "enter a valid password";
                          }
                        },
                      ),
                      Row(
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "Forgot Password?",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 56, 55, 55)),
                            ),
                          ),
                        ],
                      ),
                      ElevatedButton(
                        onPressed: () async {
                          if (formkey.currentState!.validate()) {
                            try {
                              final credential = await FirebaseAuth.instance
                                  .signInWithEmailAndPassword(
                                      email: email.text,
                                      password: password.text);
                              log(credential.user?.uid.toString() ?? "no data");
                              if (credential.user?.uid != null) {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          LottieSampleScreen(),
                                    ));
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                    content: Text(
                                        'Failed to create Account , try again')));
                              }
                            } on FirebaseAuthException catch (e) {
                              log(e.code.toString());
                              if (e.code == 'user-not-found') {
                                ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                        content: Text(
                                            'No user found for that email.')));
                                log('No user found for that email.');
                              } else if (e.code == 'wrong-password') {
                                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                    content: Text(
                                        'Wrong password provided for that user.')));
                                log('Wrong password provided for that user.');
                              }
                            }
                          }
                        },
                        child: Text(
                          "Login",
                          style: TextStyle(color: ColorConstants.mainWhite),
                        ),
                        style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll<Color>(
                              ColorConstants.mainBlack),
                        ),
                      ),
                      Center(
                        child: Row(
                          children: [
                            Text(
                              "Doesn't have an account?",
                              style: TextStyle(color: ColorConstants.mainBlack),
                            ),
                            TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => RegisterScreen(),
                                      ));
                                },
                                child: Text(
                                  "click here",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: ColorConstants.mainBlack),
                                ))
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
