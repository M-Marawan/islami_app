import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/tabs/quran/Auran_Suras.dart';
import 'package:islami_app/utils/app_assets.dart';
import 'package:islami_app/utils/app_colors.dart';

class Sura extends StatefulWidget {
   static String routname = "sura_page";
   

  @override
  State<Sura> createState() => _SuraState();
}

class _SuraState extends State<Sura> {
  // List<String> suraLines = [] ;
  String suraContent = "" ;
  
  @override
  Widget build(BuildContext context) {
    var index = ModalRoute.of(context)?.settings.arguments as int  ;
    // var index = 1 ;
    
    if(suraContent.isEmpty){
      suraFile(index) ;
    }
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
              
              Expanded(child: suraContent.isEmpty ? Center(
                child: CircularProgressIndicator(
                  color:AppColors.mainColor ,
                ),
              ) :
               SizedBox(
                  height: 200,
                   child: SingleChildScrollView(
                     child: Text(
                      suraContent , 
                     style: TextStyle(
                      fontSize: 20 ,
                       fontWeight: FontWeight.bold , 
                       color: AppColors.mainColor ,  ),
                       textDirection: TextDirection.rtl,  
                       textAlign:TextAlign.center ,),
                       ),
                 
               )
)
               
             ],
           ),
          ],
        ) ,
    );
  }

  void suraFile(int index ) async{
   String fileContent = await rootBundle.loadString("assests/files/Suras/${index+1}.txt") ;
   List<String> suraLines = fileContent.split('\n');
   for(int i=0 ; i< suraLines.length ; i++){
    suraLines[i] += "[${i+1}]" ;
    print(suraLines[i]) ;

   }
 suraContent = suraLines.join() ;
 suraContent = suraContent.replaceAll(RegExp(r'[\r\n]+'), '');
   await Future.delayed(const Duration( seconds: 1) ) ;
    setState(() {}) ;
   
    
  }
}