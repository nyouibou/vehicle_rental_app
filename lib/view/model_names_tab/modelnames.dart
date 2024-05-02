// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:vehicle_rental_app/utils/color_constants/color_constants.dart';
import 'package:vehicle_rental_app/view/categories_page/hatch/hatch_page.dart';
import 'package:vehicle_rental_app/view/categories_page/sedan/sedan_page.dart';
import 'package:vehicle_rental_app/view/categories_page/suv_page/suv_page.dart';

import 'package:vehicle_rental_app/view/home_page/home_page.dart';

class ModelNames extends StatefulWidget {
  const ModelNames({super.key});

  @override
  State<ModelNames> createState() => _ModelNamesState();
}

class _ModelNamesState extends State<ModelNames> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 11,
        child: Scaffold(
          appBar: AppBar(
            iconTheme: IconThemeData(color: ColorConstants.mainBlack),
            backgroundColor: ColorConstants.mainash,
            actions: [
              CircleAvatar(
                backgroundColor: ColorConstants.mainBlack,
              ),
              SizedBox(
                width: 10,
              )
            ],
            bottom: TabBar(labelColor: ColorConstants.mainBlack, tabs: [
              Tab(text: 'All'),
              Tab(text: 'SUV'),
              Tab(text: 'SEDAN'),
              Tab(text: 'HATCHBACK'),
              // Tab(text: 'MPV'),
              // Tab(text: 'Chevrolet Cruze'),
              // Tab(text: 'Hyundai Elantra'),
              // Tab(text: 'Volkswagen Jetta'),
              // Tab(text: 'Kia Optima'),
              // Tab(text: 'Toyota Camry'),
              // Tab(text: 'Ford Fusion')
            ]),
          ),

          // ----------------------------------------------------------------
          drawer: Drawer(
            backgroundColor:
                Colors.black, // Set drawer background color to white
            width: 300,
            elevation: 10,
            shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.horizontal(right: Radius.circular(35))),
            child: Column(
              children: [
                UserAccountsDrawerHeader(
                  accountName: Text(
                    "akhila",
                    style: TextStyle(color: ColorConstants.mainBlack),
                  ),
                  accountEmail: Text("akhi",
                      style: TextStyle(color: ColorConstants.mainBlack)),
                  decoration: BoxDecoration(
                    color: ColorConstants
                        .mainWhite, // Set user name background color to green
                  ),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://example.com/image.jpg'), // Add your image URL here
                  ),
                ),
                Column(
                  children: [
                    // Add your additional widgets here
                    ListTile(
                      title: Text('Item 1',
                          style: TextStyle(color: ColorConstants.mainWhite)),
                      onTap: () {
                        // Add your onTap logic here
                      },
                    ),
                    Divider(),
                    ListTile(
                      title: Text('Item 2',
                          style: TextStyle(color: ColorConstants.mainWhite)),
                      onTap: () {
                        // Add your onTap logic here
                      },
                    ),
                    Divider(),
                    // Add more ListTile widgets as needed
                  ],
                ),
              ],
            ),
          ),

// categories
          body: TabBarView(
              children: [HomePage(), SuvPage(), SedanPage(), HatchPage()]),
        ));
  }
}
