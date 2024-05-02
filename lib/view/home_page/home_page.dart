// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:vehicle_rental_app/utils/cardummydb.dart';
import 'package:vehicle_rental_app/utils/color_constants/color_constants.dart';
import 'package:vehicle_rental_app/utils/dummydb.dart';
import 'package:vehicle_rental_app/view/home_page/detailed_carpage/detailed_carpage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainash,
      // appBar: AppBar(
      //   iconTheme: IconThemeData(color: ColorConstants.mainBlack),
      //   backgroundColor: ColorConstants.mainash,
      //   actions: [
      //     CircleAvatar(
      //       backgroundColor: ColorConstants.mainBlack,
      //     ),
      //     SizedBox(
      //       width: 10,
      //     )
      //   ],
      // ),

      // // ----------------------------------------------------------------
      // drawer: Drawer(
      //   backgroundColor: Colors.black, // Set drawer background color to white
      //   width: 300,
      //   elevation: 10,
      //   shape: RoundedRectangleBorder(
      //       borderRadius: BorderRadius.horizontal(right: Radius.circular(35))),
      //   child: Column(
      //     children: [
      //       UserAccountsDrawerHeader(
      //         accountName: Text(
      //           "akhila",
      //           style: TextStyle(color: ColorConstants.mainBlack),
      //         ),
      //         accountEmail: Text("akhi",
      //             style: TextStyle(color: ColorConstants.mainBlack)),
      //         decoration: BoxDecoration(
      //           color: ColorConstants
      //               .mainWhite, // Set user name background color to green
      //         ),
      //         currentAccountPicture: CircleAvatar(
      //           backgroundImage: NetworkImage(
      //               'https://example.com/image.jpg'), // Add your image URL here
      //         ),
      //       ),
      //       Column(
      //         children: [
      //           // Add your additional widgets here
      //           ListTile(
      //             title: Text('Item 1',
      //                 style: TextStyle(color: ColorConstants.mainWhite)),
      //             onTap: () {
      //               // Add your onTap logic here
      //             },
      //           ),
      //           Divider(),
      //           ListTile(
      //             title: Text('Item 2',
      //                 style: TextStyle(color: ColorConstants.mainWhite)),
      //             onTap: () {
      //               // Add your onTap logic here
      //             },
      //           ),
      //           Divider(),
      //           // Add more ListTile widgets as needed
      //         ],
      //       ),
      //     ],
      //   ),
      // ),

      // body----------------------------------------------------------
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          children: [
            //

            // TextFormField(
            //   decoration: InputDecoration(
            //     filled: true,
            //     fillColor: ColorConstants
            //         .mainBlack, // Set text field background color to light green
            //     border: OutlineInputBorder(
            //       borderRadius: BorderRadius.circular(20),
            //       borderSide: BorderSide(
            //           width: 5,
            //           color: Colors
            //               .grey), // Set border width to 5 and color to white
            //     ),
            //     hintText: "find your desired vehicles...",
            //     hintStyle: TextStyle(
            //         color: ColorConstants
            //             .mainWhite), // Set hint text color to green
            //     prefixIcon: Icon(
            //       Icons.search,
            //       color: ColorConstants
            //           .mainWhite, // Set prefix icon color to green
            //     ),
            //   ),
            // ),
            SizedBox(
              height: 20,
            ),
            // 2---------------

            Expanded(
              child: ListView.separated(
                itemCount: carModelDescriptions.length,
                itemBuilder: (context, index) => GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailedCarpage(
                              image: carModelDescriptions[index]["image"]
                                  .toString(),
                              model: carModelDescriptions[index]["model"]
                                  .toString(),
                              make: carModelDescriptions[index]["make"]
                                  .toString(),
                              mileage: carModelDescriptions[index]["mileage"]
                                  .toString(),
                              price: carModelDescriptions[index]["price"]
                                  .toString(),
                              des: carModelDescriptions[index]["des"]
                                  .toString()),
                        ));
                  },
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
                                    carModelDescriptions[index]["make"]!,
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    carModelDescriptions[index]["model"]!,
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.black),
                                      child: Center(
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            carModelDescriptions[index]
                                                ["price"]!,
                                            style:
                                                TextStyle(color: Colors.white),
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
            )
          ],
        ),
      ),
    );
  }
}
