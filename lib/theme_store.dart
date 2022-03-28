import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'theme_store.g.dart';

enum ThemeType {
  light,
  dark,
}

class ThemeStore = _ThemeStore with _$ThemeStore;

abstract class _ThemeStore with Store {
  final ThemeData _lightTheme =
      ThemeData.light().copyWith(primaryColor: Colors.blue);

  final ThemeData _darkTheme =
      ThemeData.dark().copyWith(primaryColor: Colors.deepPurple);

  @observable
  ThemeType currentThemeType = ThemeType.light;

  @computed
  ThemeData get currentThemeData =>
      currentThemeType == ThemeType.light ? _lightTheme : _darkTheme;

  @action
  void toggleTheme() {
    currentThemeType =
        currentThemeType == ThemeType.light ? ThemeType.dark : ThemeType.light;
  }

  @action
  void setTheme(ThemeType themeType) {
    currentThemeType = themeType;
  }

  @computed
  bool get isDark => currentThemeType == ThemeType.dark;
}
