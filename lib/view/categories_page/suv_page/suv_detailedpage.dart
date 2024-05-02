// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:vehicle_rental_app/utils/color_constants/color_constants.dart';
import 'package:vehicle_rental_app/view/booknow_page/booknow_page.dart';

class SuvDetailedCarpage extends StatefulWidget {
  const SuvDetailedCarpage({
    super.key,
    required this.image,
    required this.model,
    required this.make,
    required this.mileage,
    required this.price,
    required this.des,
  });
  final String image;
  final String model;
  final String make;
  final String mileage;
  final String price;
  final String des;

  @override
  State<SuvDetailedCarpage> createState() => _DetailedCarpageState();
}

class _DetailedCarpageState extends State<SuvDetailedCarpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: ColorConstants.mainWhite,
                  image: DecorationImage(image: AssetImage(widget.image))),
            ),

            //

            Column(
              children: [
                Text(
                  widget.make,
                  style: TextStyle(
                      color: ColorConstants.mainBlack,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 7,
                ),
                Text(widget.mileage,
                    style: TextStyle(
                        color: ColorConstants.mainBlack,
                        fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 7,
                ),
                Text(widget.price,
                    style: TextStyle(
                        color: ColorConstants.mainBlack,
                        fontWeight: FontWeight.bold)),
                // SizedBox(
                //   height: 7,
                // ),
                // Text(widget.des,
                //     style: TextStyle(color: ColorConstants.mainBlack))
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "ABOUT",
                  style: TextStyle(
                      color: ColorConstants.mainBlack,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ],
            ),
            // -----------------------------
            Column(
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
            SizedBox(
              height: 35,
            ),

            // ==========
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BookNow(),
                    ));
              },
              child: Container(
                height: 50,
                width: 130,
                decoration: BoxDecoration(
                    border: Border.symmetric(),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black),
                child: Center(
                  child: Text(
                    "Book now",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: ColorConstants.mainWhite),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
