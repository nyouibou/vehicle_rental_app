// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:vehicle_rental_app/utils/color_constants/color_constants.dart';

class DescriptionPage extends StatefulWidget {
  const DescriptionPage({super.key});

  @override
  State<DescriptionPage> createState() => _DescriptionPageState();
}

class _DescriptionPageState extends State<DescriptionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainash,
      appBar: AppBar(
        backgroundColor: ColorConstants.mainash,
        actions: [
          Icon(
            Icons.more_vert,
            color: ColorConstants.mainBlack,
          )
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Container(
            // color: Colors.red,
            height: 150,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/whitecar2.png"))),
          ),
          SizedBox(
            height: 10,
          ),
          //  ------------

          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "hohhhh",
                      style: TextStyle(
                          color: ColorConstants.mainBlack,
                          fontWeight: FontWeight.bold,
                          fontSize: 30),
                    ),
                    Text(
                      "automatic/manual",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.grey),
                    ),
                    Text(
                      "About",
                      style: TextStyle(
                          color: ColorConstants.mainBlack,
                          fontWeight: FontWeight.bold,
                          fontSize: 30),
                    ),
                    // Text(
                    //   "The 1.5 engine is a 1.5L 4-cylinder turbocharged engine that comes standard on the Honda Civic EX and Touring trims. This engine includes 16.5 psi in boost pressure and has a 10.3:1 compression ratio.",
                    //   style: TextStyle(
                    //     color: ColorConstants.mainBlack,
                    //   ),
                    //   textAlign: TextAlign.justify,
                    // )
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(
                  "The 1.5 engine is a 1.5L 4-cylinder turbocharged engine that comes standard on the Honda Civic EX and Touring trims. This engine includes 16.5 psi in boost pressure and has a 10.3:1 compression ratio.",
                  style: TextStyle(
                    fontSize: 15,
                    color: ColorConstants.mainBlack,
                  ),
                  textAlign: TextAlign.justify,
                )
              ],
            ),
          ),
          Column(
            children: [
              Container(
                height: 200,
                width: 370,
                decoration: BoxDecoration(
                  border: Border.symmetric(),
                  borderRadius: BorderRadius.circular(10),
                  color: ColorConstants.mainWhite,
                ),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Specification",
                          style: TextStyle(
                              color: ColorConstants.mainBlack,
                              fontWeight: FontWeight.bold,
                              fontSize: 30),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  //navigate to cart or something
                },
                child: Container(
                  height: 60,
                  width: 150,
                  decoration: BoxDecoration(
                      border: Border.symmetric(),
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black),
                  child: Center(
                    child: Text(
                      "Book",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: ColorConstants.mainWhite),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
