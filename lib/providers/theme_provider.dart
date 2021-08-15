import 'package:flutter/material.dart';
import 'package:stokish_flutter/global/theme/app_theme.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeProvider(this._theme);

  Themes _theme;

  Themes getTheme() => _theme;

  AppTheme getAppTheme() {
    switch (_theme) {
      case Themes.light:
        return AppTheme.light;
      case Themes.dark:
        return AppTheme.dark;
      case Themes.black:
        return AppTheme.black;
    }
  }

  void setAppTheme(Themes theme) {
    if (theme != _theme) {
      _theme = theme;
      notifyListeners();
    }
  }
}
