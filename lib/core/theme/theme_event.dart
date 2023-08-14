abstract class ThemeEvent{}

class FetchThemeEvent extends ThemeEvent {}

class UpdateThemeEvent extends ThemeEvent {
  final bool isDarkMode;

  UpdateThemeEvent(this.isDarkMode);
}
