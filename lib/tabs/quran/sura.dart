import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/tabs/quran/Auran_Suras.dart';
import 'package:islami_app/utils/app_assets.dart';
import 'package:islami_app/utils/app_colors.dart';

class Sura extends StatelessWidget {
   static String routname = "sura_page";

  @override
  Widget build(BuildContext context) {
    // var index = ModalRoute.of(context)?.settings.arguments as int  ;
    var index = 1 ;
    return Scaffold(
      backgroundColor: AppColors.lightBlack,
        appBar: AppBar(
          title: Text(englishQuranSurahs[index] , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold , color: AppColors.mainColor , ), ),
          centerTitle: true,
          backgroundColor: AppColors.lightBlack,
        ),
        body: Stack(
           alignment: Alignment.center ,
          children: [
            Image.asset(AppAssets.suraBG, height: double.infinity , width: double.infinity, fit: BoxFit.cover,),
           Column(
            
             children: [
              SizedBox(height: 30,) ,
              Text(arabicAuranSuras[index] , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold , color: AppColors.mainColor , ), ),
              SizedBox(height: 50,) ,
              
              Text("arabicAuranSuras[index]" , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold , color: AppColors.mainColor , ), ),

             ],
           ),
          ],
        ) ,
    );
  }

  void suraFile(int index ) async{
   String fileContent = await rootBundle.loadString("assests/files/Suras/${index+1}.txt") ;
  }
}