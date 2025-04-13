import 'package:flutter/material.dart';
import 'package:islami_app/utils/app_assets.dart';
import 'package:islami_app/utils/app_colors.dart';

class RadioTabBlock  extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Container(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: AppColors.mainColor,
        image: DecorationImage(image: AssetImage(AppAssets.mosque))
      ),
    child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Radio Ibrahim Al-Akdar',
            style: TextStyle(
              color: AppColors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.play_arrow, size: 32, color:AppColors.black),
              Icon(Icons.volume_up, size: 32, color: AppColors.black),
            ],
          ),
        ],
      ),
   );
  }
  
}