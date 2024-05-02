import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:vehicle_rental_app/utils/color_constants/color_constants.dart';
import 'package:vehicle_rental_app/utils/image_constants/image_constants.dart';
import 'package:vehicle_rental_app/view/first_login/first_login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainWhite,
      body: Stack(
        children: [
          Center(
            child: Image.asset("assets/images/applogo.jpg"),
          ),
          // Positioned.fill(
          //   child: CarouselSlider(
          //     items: [
          //       Image.asset(
          //         Imageconstants.carOne,
          //         fit: BoxFit.fill,
          //       ),
          //       Image.asset(
          //         Imageconstants.bikeOne,
          //         fit: BoxFit.fill,
          //       ),
          //       Image.asset(
          //         Imageconstants.scooty,
          //         fit: BoxFit.fill,
          //       ),
          //       Image.asset(
          //         Imageconstants.carTwo,
          //         fit: BoxFit.fill,
          //       ),
          //       Image.asset(
          //         Imageconstants.bikeTwo,
          //         fit: BoxFit.fill,
          //       ),
          //       Image.asset(
          //         Imageconstants.scootytwo,
          //         fit: BoxFit.fill,
          //       ),
          //     ],
          //     options: CarouselOptions(
          //       autoPlayAnimationDuration: Duration(seconds: 1),
          //       autoPlay: true,
          //       viewportFraction: 1,
          //       height: MediaQuery.of(context).size.height,
          //     ),
          //   ),
          // ),
          // Positioned(
          //   left: 0,
          //   right: 0,
          //   bottom: 100,
          //   child: Container(
          //     padding: EdgeInsets.symmetric(horizontal: 20),
          //     child: Text(
          //       "Your Journey Starts Here. Rent. Drive. Explore.",
          //       textAlign: TextAlign.justify,
          //       style: TextStyle(
          //         color: ColorConstants.mainBlack,
          //         fontWeight: FontWeight.w700,
          //         fontSize: 20,
          //       ),
          //     ),
          //   ),
          // ),
          Positioned(
            bottom: 20,
            left: 60,
            right: 60,
            child: InkWell(
              onTap: () => Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => FirstLogin(),
                ),
              ),
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: ColorConstants.mainBlack,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                  child: Text(
                    "Get Started...",
                    style: TextStyle(color: ColorConstants.mainWhite),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
