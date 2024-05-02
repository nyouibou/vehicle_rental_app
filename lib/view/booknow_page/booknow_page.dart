import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:vehicle_rental_app/utils/color_constants/color_constants.dart';

class BookNow extends StatefulWidget {
  const BookNow({super.key});

  @override
  State<BookNow> createState() => _BookNowState();
}

class _BookNowState extends State<BookNow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            SizedBox(
              height: 200,
            ),
            Lottie.asset("assets/images/Animation - 1714473945004.json"),
            SizedBox(
              height: 25,
            ),
            Text(
              "Your booking is successful!!!",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: ColorConstants.mainBlack,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
