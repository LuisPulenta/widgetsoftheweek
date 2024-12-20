import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  static late SharedPreferences _prefs;

  static bool _isDarkmode = false;

//----------------------------------------------------
  static Future init() async {
    _prefs = await SharedPreferences.getInstance();
  }

//----------------------------------------------------
  static bool get isDarkmode {
    return _prefs.getBool('isDarkmode') ?? _isDarkmode;
  }

  static set isDarkmode(bool isDarkmode) {
    _isDarkmode = isDarkmode;
    _prefs.setBool('isDarkmode', isDarkmode);
  }
}
