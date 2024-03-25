import 'package:shared_preferences/shared_preferences.dart';

class CacheData{
 static late SharedPreferences sharedPreferences;
 static Future<void> cacheInitialization() async {
    sharedPreferences= await SharedPreferences.getInstance();
  }

  static Future<bool> setData({required String key, required dynamic value})async {
   if( value is bool)
     {
       print(value is bool);
       return await sharedPreferences.setBool(key, value);
     }
   else if( value is String)
     {

       return await  sharedPreferences.setString(key, value);
   }
  else if( value is double)
     {

       return await  sharedPreferences.setDouble(key, value);
   }
  else if( value is int)
     {

       return await  sharedPreferences.setInt(key, value);
   }
  return false;
  }

  static dynamic getData({required String key}) {
    return sharedPreferences.get(key);
  }

  static Future<bool> deleteData({required String key})async {
    return await sharedPreferences.remove(key);
  }

  static Future<bool> clearData()async {
    return await sharedPreferences.clear();
  }
}