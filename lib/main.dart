import 'package:flutter/material.dart';
import 'package:islami_app/home_screen.dart';
import 'package:islami_app/tabs/quran/sura.dart';
import 'package:islami_app/utils/app_theme.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
 
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false ,
       
      theme: Apptheme.darkTheme,
      initialRoute: HomeScreen.routname,  
      routes: {
        HomeScreen.routname: (context) => HomeScreen(),  
        Sura.routname : (context) => Sura() ,
         
      },
    ) ;
  } 
}

