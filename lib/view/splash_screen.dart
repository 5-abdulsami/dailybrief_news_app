import 'dart:async';
import 'package:flutter/material.dart';
import 'package:dailybrief_news_app/view/home_screen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: ((context) => HomeScreen())));
    });
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height * 1;
    final width = MediaQuery.sizeOf(context).width * 1;
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              'images/splash_pic.jpg',
              fit: BoxFit.cover,
              width: width * 0.9,
              height: height * 0.5,
            ),
          ),
          SizedBox(
            height: height * 0.04,
          ),
          Text(
            'DAILY BRIEF',
            style: GoogleFonts.anton(
                letterSpacing: 0.6, color: Colors.white, fontSize: 40),
          ),
          SizedBox(
            height: height * 0.04,
          ),
          const SpinKitFadingCube(
            color: Colors.white,
            size: 40,
          ),
        ],
      ),
    );
  }
}
