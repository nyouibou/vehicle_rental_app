// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:vehicle_rental_app/utils/color_constants/color_constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainbackgroundgreen,
      appBar: AppBar(
        iconTheme: IconThemeData(color: ColorConstants.mainWhite),
        backgroundColor: ColorConstants.mainbackgroundgreen,
        actions: [CircleAvatar()],
      ),
      drawer: Drawer(
        backgroundColor: Colors.white, // Set drawer background color to white
        width: 300,
        elevation: 10,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.horizontal(right: Radius.circular(35))),
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("akhila"),
              accountEmail: Text("akhi"),
              decoration: BoxDecoration(
                color: ColorConstants
                    .mainbackgroundgreen, // Set user name background color to green
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
                      style:
                          TextStyle(color: ColorConstants.mainbackgroundgreen)),
                  onTap: () {
                    // Add your onTap logic here
                  },
                ),
                ListTile(
                  title: Text('Item 2',
                      style:
                          TextStyle(color: ColorConstants.mainbackgroundgreen)),
                  onTap: () {
                    // Add your onTap logic here
                  },
                ),
                // Add more ListTile widgets as needed
              ],
            ),
          ],
        ),
      ),

      // body---------------
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          children: [
            //
            TextFormField(
              decoration: InputDecoration(
                filled: true,
                fillColor: ColorConstants
                    .lightgreen, // Set text field background color to light green
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(
                      width: 5,
                      color: Colors
                          .white), // Set border width to 5 and color to white
                ),
                hintText: "find your desired vehicles...",
                hintStyle: TextStyle(
                    color: ColorConstants
                        .mainWhite), // Set hint text color to green
                prefixIcon: Icon(
                  Icons.search,
                  color: ColorConstants
                      .mainWhite, // Set prefix icon color to green
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            // 2---------------

            Expanded(
              child: GridView.builder(
                itemCount: 10,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 7),
                itemBuilder: (context, index) => Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      border: Border.all(
                          width: 2, color: ColorConstants.mainWhite)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Center(
                            child: Container(
                              padding: EdgeInsets.all(8),
                              height: 100,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "https://images.pexels.com/photos/170811/pexels-photo-170811.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                          Positioned(
                              top: 4,
                              right: 16,
                              child: CircleAvatar(
                                backgroundColor: ColorConstants.lightgreen,
                                radius: 20,
                                child: Icon(
                                  Icons.favorite_outline,
                                  color: ColorConstants.mainWhite,
                                ),
                              ))
                        ],
                      ),
                      Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // mainAxisAlignment: MainAxisAlignment.start,
                          // mainAxisAlignment: MainAxisAlignment.center,
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "title1",
                              style: TextStyle(color: ColorConstants.mainWhite),
                            ),
                            Text("title2",
                                style:
                                    TextStyle(color: ColorConstants.mainWhite)),
                            Text("title3",
                                style:
                                    TextStyle(color: ColorConstants.mainWhite))
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
