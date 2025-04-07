import 'package:flutter/material.dart';
import 'package:islami_app/tabs/quran/Auran_Suras.dart';
import 'package:islami_app/utils/app_assets.dart';
import 'package:islami_app/utils/app_colors.dart';

class SuraListWidget extends StatelessWidget {
  int index ;
   SuraListWidget(this.index) ;
      
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(AppAssets.starIcon) ,
            Text("${index+1}" , style: TextStyle(fontSize: 16 , fontWeight: FontWeight.bold , color: AppColors.white),)
          ],
        ) ,
        SizedBox(width: 10,) ,
        Column(
                     
        children: [
            Text("${englishQuranSurahs[index]}" , style: TextStyle(fontSize: 16 , fontWeight: FontWeight.bold , color: AppColors.white),),
            Text("${AyaNumber[index]} Verses  " , style: TextStyle(fontSize: 16 , fontWeight: FontWeight.bold , color: AppColors.white),)
        ],
        ),
        Spacer(),
        Text("${arabicAuranSuras[index]}" , style: TextStyle(fontSize: 16 , fontWeight: FontWeight.bold , color: AppColors.white),),

      ],
      )
    ) ;
  }
  
}