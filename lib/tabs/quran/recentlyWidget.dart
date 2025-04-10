import 'package:flutter/widgets.dart';
import 'package:islami_app/tabs/quran/Auran_Suras.dart';
import 'package:islami_app/tabs/quran/shared_prefrence.dart';
import 'package:islami_app/utils/app_assets.dart';
import 'package:islami_app/utils/app_colors.dart';
 
class Recentlywidget extends StatefulWidget{
 
  @override
  State<Recentlywidget> createState() => _RecentlywidgetState();
}

class _RecentlywidgetState extends State<Recentlywidget> {
    List<int> mostRecent =[] ;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  getMostRecentList() ;
  

  }

  void getMostRecentList() async{
    mostRecent =await readMostRecentList() ;
    setState(() {
      
    });
  }
  @override
  Widget build(BuildContext context) {
    return Visibility(
          visible: mostRecent.isNotEmpty,
          
          child: SizedBox(
                  height: 150,  
                  child: ListView.separated(
                    itemBuilder: (context, index) {
                      Container(
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
                Text("englishQuranSurahs[mostRecent[index]]", style: TextStyle(fontSize: 16 , fontWeight: FontWeight.bold , color: AppColors.black),),
                SizedBox(height: 10 ,),
                Text("arabicAuranSuras[mostRecent[index]]" , style: TextStyle(fontSize: 16 , fontWeight: FontWeight.bold , color: AppColors.black),),
                SizedBox(height: 10 ,),
                Text("{AyaNumber[mostRecent[index]]} verses " ,style: TextStyle(fontSize: 16 , fontWeight: FontWeight.bold , color: AppColors.black),),
                SizedBox(height: 0 ,),
              ],
            ) ,
            Image.asset(AppAssets.recentlyimg) 
            
          ],
          
        ),
      ),
    ) ;
                    },
                    separatorBuilder: (context, index) => SizedBox(width: 10,),
                    itemCount: mostRecent.length,
                    scrollDirection: Axis.horizontal
                  ),
        ) ,
        ) ;
  }
}



