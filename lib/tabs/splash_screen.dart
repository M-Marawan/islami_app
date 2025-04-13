import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/home_screen.dart';
import 'package:islami_app/on_boarding.dart';

 

class SplashScreen extends StatefulWidget {
  @override
  SplashScreenState createState() => SplashScreenState();
}


class SplashScreenState  extends State<SplashScreen>{
  static String routname = "splashscreen" ;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, OnBoardingPage.routname) ;
    });
  }

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Colors.transparent,
      body: Image.asset("assests/images/Splash Screen.png",height: double.infinity,width: double.infinity, fit: BoxFit.fill ,),
    ) ;
  }

}