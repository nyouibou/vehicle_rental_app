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
        backgroundColor: ColorConstants.mainash,
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
        body: Column());
  }
}
