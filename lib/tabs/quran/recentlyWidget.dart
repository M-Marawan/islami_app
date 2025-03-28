import 'package:flutter/widgets.dart';
import 'package:islami_app/utils/app_assets.dart';
import 'package:islami_app/utils/app_colors.dart';

class Recentlywidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color:AppColors.mainColor ,
        borderRadius: BorderRadius.circular(20)
      ),
      child: SizedBox(
        height:150 , width: 283,
      
        child: Row(
          
          children: [
            Column(
              
              children: [
                SizedBox(height: 10 ,),
                Text("AL-Anbiya", style: TextStyle(fontSize: 16 , fontWeight: FontWeight.bold , color: AppColors.black),),
                SizedBox(height: 10 ,),
                Text("الانبياء" , style: TextStyle(fontSize: 16 , fontWeight: FontWeight.bold , color: AppColors.black),),
                SizedBox(height: 10 ,),
                Text("112 verses " ,style: TextStyle(fontSize: 16 , fontWeight: FontWeight.bold , color: AppColors.black),),
                SizedBox(height: 0 ,),
              ],
            ) ,
            Image.asset(AppAssets.recentlyimg) 
            
          ],
          
        ),
      ),
    ) ;
  }
  
}