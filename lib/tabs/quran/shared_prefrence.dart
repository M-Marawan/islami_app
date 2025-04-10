import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefrenceKeys {
  static const String mostRecentKey = "most_recent_key" ;
}
void updateMostRecentList(int suraIndex) async{
  final SharedPreferences prefs = await SharedPreferences.getInstance() ;
  List<String> mostRecentList = prefs.getStringList(SharedPrefrenceKeys.mostRecentKey)??[] ;
  mostRecentList.add('$suraIndex') ;
  await prefs.setStringList(SharedPrefrenceKeys.mostRecentKey, mostRecentList) ;
}

Future<List<int>> readMostRecentList() async{
  final SharedPreferences prefs = await SharedPreferences.getInstance() ;
   List<String> mostRecentListAsString = prefs.getStringList(SharedPrefrenceKeys.mostRecentKey)??[] ;
    List<int> mostRecentListAsInt = mostRecentListAsString.map((element)=>int.parse(element)).toList() ;
    return mostRecentListAsInt ;
}