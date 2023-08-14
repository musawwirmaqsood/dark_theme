abstract class ThemeRepository{
  
  Future<bool> isDark();

  Future<bool> updateThemeMode({required bool isDark});

}