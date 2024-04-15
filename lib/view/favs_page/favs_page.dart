import 'package:flutter/material.dart';
import 'package:vehicle_rental_app/utils/color_constants/color_constants.dart';

class FavPage extends StatefulWidget {
  const FavPage({super.key});

  @override
  State<FavPage> createState() => _FavPageState();
}

class _FavPageState extends State<FavPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainbackgroundgreen,
      appBar: AppBar(
        backgroundColor: ColorConstants.mainbackgroundgreen,
        title: Text(
          "favourites",
          style: TextStyle(color: ColorConstants.mainWhite),
        ),
        actions: [
          Icon(
            Icons.favorite_outline_sharp,
            color: ColorConstants.mainWhite,
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              itemCount: 3,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 7),
              itemBuilder: (context, index) => Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    border:
                        Border.all(width: 2, color: ColorConstants.mainWhite)),
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
                              style: TextStyle(color: ColorConstants.mainWhite))
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
    );
  }
}
