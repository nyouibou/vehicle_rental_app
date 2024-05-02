// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:vehicle_rental_app/utils/color_constants/color_constants.dart';

import 'package:vehicle_rental_app/view/lottie_sample_screen/lottie_sample_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController email = TextEditingController();
  TextEditingController passwrd = TextEditingController();
  TextEditingController phone = TextEditingController();
  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainash,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 100),
        child: Center(
          child: Form(
            key: formkey,
            child: Column(
              children: [
                TextFormField(
                  controller: email,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.grey, width: 3)),
                      label: Text(
                        "email id",
                        style: TextStyle(color: ColorConstants.mainBlack),
                      ),
                      prefixIcon: Icon(
                        Icons.mail,
                        color: ColorConstants.mainBlack,
                      )),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: phone,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.grey, width: 3)),
                      label: Text(
                        "phn no",
                        style: TextStyle(color: ColorConstants.mainBlack),
                      ),
                      prefixIcon: Icon(
                        Icons.phone,
                        color: ColorConstants.mainBlack,
                      )),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  obscureText: true,
                  controller: passwrd,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.grey, width: 3)),
                      label: Text(
                        "password",
                        style: TextStyle(color: ColorConstants.mainBlack),
                      ),
                      prefixIcon: Icon(
                        Icons.password,
                        color: ColorConstants.mainBlack,
                      )),
                ),
                SizedBox(
                  height: 20,
                ),
                TextButton(
                  onPressed: () async {
                    {
                      try {
                        if (formkey.currentState!.validate()) {
                          final cred = await FirebaseAuth.instance
                              .createUserWithEmailAndPassword(
                            email: email.text,
                            password: passwrd.text,
                          );
                          // collectionReference.add({

                          //   "ph": phone.text,

                          // });
                          if (cred.user?.uid != null) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LottieSampleScreen(),
                              ),
                            );
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                    "Failed to create Account, try again.."),
                              ),
                            );
                          }
                        }
                      } catch (e) {
                        print("Error: $e");
                      }
                    }
                  },
                  child: Text(
                    "register",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        ColorConstants.mainBlack),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
