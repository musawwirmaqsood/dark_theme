import 'package:dark_theme/core/local_storage/local_storage_i.dart';
import 'package:dark_theme/core/repository/theme_repository_i.dart';
import 'package:dark_theme/core/utils/local_storage_key.dart';

class LocalThemeRepository implements ThemeRepository {
  final LocalStorage localStorage;

  LocalThemeRepository(this.localStorage);

  @override
  Future<bool> isDark() async {
    return localStorage.getBool(LocalStorageKey.isDark);
  }

  @override
  Future<bool> updateThemeMode({required bool isDark}) async {
    return localStorage.setBool(LocalStorageKey.isDark, isDark);
  }
}
