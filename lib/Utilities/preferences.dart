import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefs {

  static SharedPreferences? _prefs;

  static SharedPreferences? getPrefs() {
    return _prefs;
  }

  static Future<SharedPreferences?> init() async {
    _prefs = await SharedPreferences.getInstance();
    return _prefs;
  }

  /// SET AND GET STRINGS
  static Future<bool> setString(String key, String value) async => await _prefs!.setString(key, value);

  static String? getString(String key) {
    String? value = _prefs?.getString(key);
    if (value == null) return value = "";
    return value;
  }

  /// SET AND GET BOOL
  static Future<bool> setBool(String key, bool value) async => await _prefs!.setBool(key, value);

  static bool? getBool(String key) {
    bool? value = _prefs?.getBool(key);
    if (value == null) return value = false;
    return value;
  }

  /// SET AND GET INT
  static Future<bool> setInt(String key, int value) async => await _prefs!.setInt(key, value);

  static int? getInt(String key) {
    int? value = _prefs?.getInt(key);
    if (value == null) return value = 0;
    return value;
  }

  /// SET AND GET DOUBLE
  static Future<bool> setDouble(String key, double value) async => await _prefs!.setDouble(key, value);

  static double? getDouble(String key) {
    double? value = _prefs?.getDouble(key);
    if (value == null) return value = 0.0;
    return value;
  }

  /// SET AND GET STRING LIST
  static Future<bool> setStringList(String key, List<String> value) async => await _prefs!.setStringList(key, value);

  static List<String>? getStringList(String key) {
    List<String>? value = _prefs?.getStringList(key);
    if (value == null) return value = const <String>[];
    return value;
  }

  /// REMOVE SET PREFS
  static Future<bool> removePrefs(String key) async => _prefs!.remove(key);

  /// CLEAR ALL PREFS
  static Future<bool> clearPrefs() async => _prefs!.clear();
}

//SharedPrefs.setString(name, _nameController.text.toString());
//String userIds = SharedPrefs.getString(currantUserId) ?? '';