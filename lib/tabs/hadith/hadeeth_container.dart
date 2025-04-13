import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/tabs/hadith/content.dart';
import 'package:islami_app/utils/app_assets.dart';
import 'package:islami_app/utils/app_colors.dart';

class hadeethContainer extends StatefulWidget{
  
  int index ; 
  hadeethContainer({required this.index} ) ;

  @override
  State<hadeethContainer> createState() => _hadeethContainerState();
}

class _hadeethContainerState extends State<hadeethContainer> {

  String? title;
  String? content;
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    readHadeth(widget.index);
  }
  
  @override
  Widget build(BuildContext context) {
     
   return Container(
      decoration: BoxDecoration(
        color: AppColors.mainColor ,
         borderRadius: BorderRadius.circular(15),
         image: DecorationImage(image: AssetImage(AppAssets.hadithBG), fit: BoxFit.fill)
         ,
      ),
        width: 300,
      child: isLoading
          ? Center(child: CircularProgressIndicator(color: AppColors.black,))
          : Column(
              children: [
                SizedBox(height: 20,) ,
                Text(
                  title ?? '',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 33),
                
                Expanded(
                  child: SingleChildScrollView(child: Text(
                    content ?? '',
                    style: TextStyle(fontSize: 16),
                    textAlign: TextAlign.center,
                  ),),
                )
              ],
            ),
   ) ;
  }


    Future<void> readHadeth(int index) async {
     String fileContent = await rootBundle.loadString("assests/files/Hadeeth/h$index.txt") ;
      await Future.delayed(const Duration( seconds: 1) ) ;
      if (!mounted) return;
       setState(() {
        title = fileContent.substring(0, fileContent.indexOf("\n"));
        content = fileContent.substring(fileContent.indexOf("\n") + 1);
        isLoading = false;
      });
      
  }
}