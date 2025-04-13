import 'package:flutter/material.dart';
import 'package:islami_app/home_screen.dart';
import 'package:islami_app/on_boarding.dart';
import 'package:islami_app/tabs/quran/provider.dart';
import 'package:islami_app/tabs/quran/sura.dart';
import 'package:islami_app/tabs/splash_screen.dart';
import 'package:islami_app/utils/app_theme.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(  ChangeNotifierProvider(create: (context) => MostRecentProvider(),child: MyApp() ,)  );
}

class MyApp extends StatelessWidget {
 
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false ,
       
      theme: Apptheme.darkTheme,
      initialRoute: SplashScreenState.routname,  
      routes: {
        SplashScreenState.routname: (context) => SplashScreen(), 
        OnBoardingPage.routname : (context) => OnBoardingPage() ,
        HomeScreen.routname: (context) => HomeScreen(),  
        Sura.routname : (context) => Sura() ,
         
      },
    ) ;
  } 
}

