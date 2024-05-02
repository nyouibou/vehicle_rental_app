// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:vehicle_rental_app/utils/cardummydb.dart';
import 'package:vehicle_rental_app/utils/color_constants/color_constants.dart';
import 'package:vehicle_rental_app/utils/dummydb.dart';

class HatchPage extends StatefulWidget {
  const HatchPage({super.key});

  @override
  State<HatchPage> createState() => _HomePageState();
}

class _HomePageState extends State<HatchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConstants.mainash,
        body:
            // 2---------------

            Expanded(
          child: ListView.separated(
            itemCount: HatchCarModelDescriptions.length,
            itemBuilder: (context, index) => GestureDetector(
              // ----------------------------------------------------
              onTap: () {},
              child: Container(
                decoration: BoxDecoration(
                  color: ColorConstants.mainWhite,
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  // border: Border.all(
                  //     width: 2, color: ColorConstants.mainbackgroundgreen)
                ),
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            children: [
                              Text(
                                HatchCarModelDescriptions[index]["make"]!,
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                HatchCarModelDescriptions[index]["model"]!,
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.black),
                                  child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        HatchCarModelDescriptions[index]
                                            ["price"]!,
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Positioned(
                          right: 30, // Adjust this value as needed
                          top: 30, // Adjust this value as needed
                          child: Container(
                            height: 109,
                            width: 159,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                    carModelDescriptions[index]["image"]!,
                                  ),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(20),

                              // ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            separatorBuilder: (context, index) => SizedBox(
              height: 20,
            ),
          ),
        ));
  }
}
