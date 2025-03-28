import 'package:flutter/material.dart';
import 'package:islami_app/tabs/quran/recentlyWidget.dart';
import 'package:islami_app/utils/app_assets.dart';
import 'package:islami_app/utils/app_colors.dart';

class Quran extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Container(
    margin: EdgeInsets.all(20),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
       
        TextField(
          cursorColor: AppColors.mainColor,
          decoration: InputDecoration(
            
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              borderSide: BorderSide(color: AppColors.mainColor, width: 3 ) ,
             
            ),
             focusedBorder:  OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              borderSide: BorderSide(color: AppColors.mainColor, width: 3 ) ,
             
            ),
            prefixIcon: ImageIcon(AssetImage(AppAssets.quranSearchIcon) , color: AppColors.mainColor,),
            hintText: "Sura name" , hintStyle: TextStyle(
              fontSize: 16 , fontWeight: FontWeight.bold , color: AppColors.white
            )
          ), 
          style: TextStyle(
            fontSize: 16 , fontWeight: FontWeight.bold , color: AppColors.white
          ),
          
        ),
        SizedBox(height: 10,) ,
        Align(
           alignment: Alignment.centerLeft,
            child: Text("Most Recently" , style: TextStyle(fontSize: 16 , fontWeight: FontWeight.bold , color: AppColors.white),),
           
        )
        ,SizedBox(height: 10,) ,
        
        ListView.separated(
          itemBuilder: Recentlywidget(),
           separatorBuilder: separatorBuilder,
            itemCount: itemCount)
      ],
    ),
   );
  }
}