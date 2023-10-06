import 'package:shared_preferences/shared_preferences.dart';

class HelperFunction {
  // keys
  static String userLoggedInKey = 'LOGGEDINKEY';
  static String userNameKey = 'USERNAMEKEY';
  static String userEmailKey = 'USEREMAILKEY';

  // saving the data to SF
  static Future<bool> saverUserLoggedInStatus(bool isUserLoggedIn) async {
    final SharedPreferences sf = await SharedPreferences.getInstance();
    return await sf.setBool(userLoggedInKey, isUserLoggedIn);
  }

  static Future<bool> saverUserNameSF(String userName) async {
    final SharedPreferences sf = await SharedPreferences.getInstance();
    return await sf.setString(userNameKey, userName);
  }

  static Future<bool> saverUserEmailSF(String userEmail) async {
    final SharedPreferences sf = await SharedPreferences.getInstance();
    return await sf.setString(userEmailKey, userEmail);
  }

  // getting the data from SF
  static Future<bool?> getUserLoggedInStatus() async {
    final SharedPreferences sf = await SharedPreferences.getInstance();
    return sf.getBool(userLoggedInKey);
  }

  static Future<String?> getUserEmailFromSF() async {
    final SharedPreferences sf = await SharedPreferences.getInstance();
    return sf.getString(userEmailKey);
  }

  static Future<String?> getUserNameFromSF() async {
    final SharedPreferences sf = await SharedPreferences.getInstance();
    return sf.getString(userNameKey);
  }
}
