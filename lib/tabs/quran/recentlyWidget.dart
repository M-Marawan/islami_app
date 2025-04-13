import 'package:flutter/widgets.dart';
import 'package:islami_app/tabs/quran/Auran_Suras.dart';
import 'package:islami_app/tabs/quran/provider.dart';
import 'package:islami_app/tabs/quran/shared_prefrence.dart';
import 'package:islami_app/utils/app_assets.dart';
import 'package:islami_app/utils/app_colors.dart';
import 'package:provider/provider.dart';
 
class Recentlywidget extends StatefulWidget{
 
  @override
  State<Recentlywidget> createState() => _RecentlywidgetState();
}

class _RecentlywidgetState extends State<Recentlywidget> {
  late MostRecentProvider provider ;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
       provider.readMostRecentList() ;
    }) ;
 
  

  }

  // void getMostRecentList() async{
  //   mostRecent =await readMostRecentList() ;
  //   setState(() {
      
  //   });
  // }
  @override
  Widget build(BuildContext context) {
     provider = Provider.of<MostRecentProvider>(context) ;
    return Visibility(
          visible: provider.mostRecent.isNotEmpty,
          
          child: SizedBox(
                  height: 150,  
                  child: ListView.separated(
                    itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      color: AppColors.mainColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: SizedBox(
                      height: 150,
                      width: 283,
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 10),
                              Text(
                                "    ${englishQuranSurahs[provider.mostRecent[index]]}",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.black,
                                  
                                ),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(height: 10),
                              Text(
                               "    ${arabicAuranSuras[provider.mostRecent[index]]}",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.black,
                                ),
                              ),
                              SizedBox(height: 20),
                              Text(
                                "  ${AyaNumber[provider.mostRecent[index]]} verses",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.black,
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          Image.asset(AppAssets.recentlyimg),
                        ],
                      ),
                    ),
                  );
                   },
                    separatorBuilder: (context, index) => SizedBox(width: 10,),
                    itemCount: provider.mostRecent.length,
                    scrollDirection: Axis.horizontal
                  ),
        ) ,
        ) ;
  }
}



