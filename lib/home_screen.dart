import 'package:flutter/material.dart';
import 'package:islami_app/tabs/hadith/hadith.dart';
import 'package:islami_app/tabs/quran/quran.dart';
import 'package:islami_app/tabs/sebha/sebha.dart';
import 'package:islami_app/tabs/time/time.dart';
import 'package:islami_app/tabs/radio/radio.dart';
import 'package:islami_app/utils/app_assets.dart';
import 'package:islami_app/utils/app_colors.dart';

class HomeScreen extends StatefulWidget{
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0 ;

  @override
  Widget build(BuildContext context) {
    List<Widget> bodyTabs = [
      Quran(),Hadith(),Sebha(),RadioTap() ,Time()
    ] ;
    List<String> BGs = [
       AppAssets.quranBg,
       AppAssets.hadithBg ,
       AppAssets.sebhaBg ,
       AppAssets.radioBg ,
       AppAssets.timeBg ,
    ] ;
    return Stack(
      children: [

        Image.asset(
          BGs[selectedIndex],
        width: double.infinity, height: double.infinity , fit: BoxFit.fill,) ,
        Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            
            currentIndex: selectedIndex ,
            onTap: (index)  {
              selectedIndex = index ;
              setState(() {
                
              });
            },
            type:  BottomNavigationBarType.fixed ,
             backgroundColor: AppColors.mainColor,
            items: [
            BottomNavigationBarItem(icon: naviItem(index: 0, path: AppAssets.quranIcon) , label: "Quran"),
            BottomNavigationBarItem(icon: naviItem(index: 1, path: AppAssets.hadithIcon) , label: "Hadith"),
            BottomNavigationBarItem(icon: naviItem(index: 2, path: AppAssets.sebhaIcon) , label: "Sebha"),
            BottomNavigationBarItem(icon: naviItem(index: 3, path: AppAssets.radioIcon) , label: "radio"),
            BottomNavigationBarItem(icon: naviItem(index: 4, path: AppAssets.timeIcon) , label: "time"),
            
            ]),
           body: Column(
             children: [
                Image(image: AssetImage(AppAssets.islaminBg)) ,
               bodyTabs[selectedIndex],
             ],
           ) ,
            
        )
      ],
    );
  }

  Widget naviItem ({required int index , required String path }){
   return  selectedIndex==index ? Container(
              padding: EdgeInsets.symmetric(horizontal: 16 , vertical: 4 ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: AppColors.blackBg ,
                
              ),
              child: ImageIcon(AssetImage(path) )
              ) : ImageIcon(AssetImage(path) ) ;
  }
}