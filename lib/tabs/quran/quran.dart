import 'package:flutter/material.dart';
import 'package:islami_app/tabs/quran/Auran_Suras.dart';
import 'package:islami_app/tabs/quran/Sura_list_widget.dart';
import 'package:islami_app/tabs/quran/recentlyWidget.dart';
import 'package:islami_app/tabs/quran/shared_prefrence.dart';
import 'package:islami_app/tabs/quran/sura.dart';
import 'package:islami_app/utils/app_assets.dart';
import 'package:islami_app/utils/app_colors.dart';

class Quran extends StatefulWidget{

  @override
  State<Quran> createState() => _QuranState();
}

class _QuranState extends State<Quran> {
  List<int> QuranIndices = List.generate(114, (index) => index ,) ;
  
  @override
  Widget build(BuildContext context) {
   return Container(
    margin: EdgeInsets.all(20),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
       
        TextField(
         onChanged: (serchText) => search(serchText),
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
        
        Recentlywidget() ,
        SizedBox(height: 10,) ,
        Align(
            alignment: Alignment.centerLeft,
              child: Text("Suras List" , style: TextStyle(fontSize: 16 , fontWeight: FontWeight.bold , color: AppColors.white),),
            
          ),
           SizedBox(height: 10,) 
       , SizedBox(
            height: 370 ,  
            child: ListView.separated(
              itemBuilder: (context, index) => InkWell(child: SuraListWidget(QuranIndices[index]), onTap: () {
                Navigator.of(context).pushNamed(Sura.routname,arguments: QuranIndices[index] ) ;
                updateMostRecentList(QuranIndices[index]) ;
              },
              ) ,
              separatorBuilder: (context, index) => SizedBox(height: 10,),
              itemCount: QuranIndices.length,
          
            ), 
       )
         
      ],
    ),
   );
  }

  void search(String Text){
    List<int> searched = [];
    for(int i =0 ; i< arabicAuranSuras.length ; i++){
      if(arabicAuranSuras[i].toLowerCase().contains(Text.toLowerCase())){
          searched.add(i) ;
      }else if(englishQuranSurahs[i].toLowerCase().contains(Text.toLowerCase())){
        searched.add(i) ;
      }
    }

    QuranIndices=searched ;
    setState(() {
      
    });
    
  }
}