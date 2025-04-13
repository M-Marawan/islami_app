import 'package:flutter/material.dart';
import 'package:islami_app/utils/app_assets.dart';
import 'package:islami_app/utils/app_colors.dart';

class Sebha extends StatefulWidget{
  @override
  State<Sebha> createState() => _SebhaState();
}

class _SebhaState extends State<Sebha> {
   int counter=0 ;
   int index = 0 ;
   List<String> azkarr = ["سبحان الله" , "الْحَمْدُ للّهِ" ," الْلَّهُ أَكْبَرُ" ] ;
  @override
  Widget build(BuildContext context) {
   
   return Container(
      width: double.infinity,
    
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center, 
        children: [
          SizedBox(height: 30,) ,
          Text(
            "سَبِّحِ اسْمَ رَبِّكَ الأعلى",
            style: TextStyle(
              color: AppColors.white,
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),  SizedBox(height: 150,) ,
          
          Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(AppAssets.sebha),
               Column(
                children: [
                  Text(
                  azkarr[index],
                  style: TextStyle(
                    color: AppColors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                  SizedBox(height: 10,) ,
                  ElevatedButton(
                onPressed: (){ counter++ ; setState(() {
                  if(counter==34){
                      counter=0 ;
                      if(index==2){
                        index=0 ;
                      }else{
                        index++ ;
                      }
                  }
                }); } ,
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.transparentColor ,
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(20),
                  elevation: 6,
                ),
                child: Text(
                  "$counter",
                  style: TextStyle(
                    color: AppColors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
                ],
               )
              
            
            ],
          )
        ],
      ),
    );
  }
}