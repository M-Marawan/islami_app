import 'package:flutter/widgets.dart';
import 'package:islami_app/tabs/quran/shared_prefrence.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MostRecentProvider extends ChangeNotifier{
    List<int> mostRecent =[] ;

  void readMostRecentList() async{
    final SharedPreferences prefs = await SharedPreferences.getInstance() ;
    List<String> mostRecentListAsString = prefs.getStringList(SharedPrefrenceKeys.mostRecentKey)??[] ;
    mostRecent = mostRecentListAsString.map((element)=>int.parse(element)).toList() ;
      notifyListeners();
  }

  void updateMostRecentList(int suraIndex) async{
    final SharedPreferences prefs = await SharedPreferences.getInstance() ;
    List<String> mostRecentList = prefs.getStringList(SharedPrefrenceKeys.mostRecentKey)??[] ;
    if(mostRecentList.contains('$suraIndex')){
      mostRecentList.remove('$suraIndex') ;
    }
    mostRecentList.insert(0,'$suraIndex') ;
    
    if(mostRecentList.length==6){
      mostRecentList.removeLast() ;
    }
    await prefs.setStringList(SharedPrefrenceKeys.mostRecentKey, mostRecentList) ;
  }

 
  
}