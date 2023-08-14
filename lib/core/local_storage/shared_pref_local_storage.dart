import 'package:dark_theme/core/local_storage/local_storage_i.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefLocalStorage extends LocalStorage {
  @override
  Future<bool> getBool(String key) async {
    final pref = await SharedPreferences.getInstance();
    return pref.getBool(key) ?? false;
  }

  @override
  Future<bool> setBool(String key, bool value) async {
    final pref = await SharedPreferences.getInstance();
    return pref.setBool(key, value);
  }
}
