import 'package:dark_theme/core/repository/theme_repository_i.dart';
import 'package:dark_theme/core/theme/theme_state.dart';
import 'package:dark_theme/core/theme/theme_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  final ThemeRepository themeRepository;

  ThemeBloc(this.themeRepository) : super(ThemeState(ThemeData.light())) {
    on<FetchThemeEvent>((event, emit) async {
      bool isDark = await themeRepository.isDark();
      emit(ThemeState(isDark ? ThemeData.dark() : ThemeData.light()));
    });

    on<UpdateThemeEvent>((event, emit) async {
      bool successs = await themeRepository.updateThemeMode(isDark: event.isDarkMode);
      if (successs) {
        emit(ThemeState(
            event.isDarkMode ? ThemeData.dark() : ThemeData.light()));
      }
    });
  }
}
