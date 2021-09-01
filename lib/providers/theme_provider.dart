import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../global/theme/theme_data.dart';
import '../utils/constants.dart';

final StateNotifierProvider<ThemeProvider, Themes> themeController =
    StateNotifierProvider<ThemeProvider, Themes>((_) => ThemeProvider());

class ThemeProvider extends StateNotifier<Themes> {
  ThemeProvider() : super(Themes.light) {
    _initTheme();
  }
  SharedPreferences? _perf;

  Future<void> _init() async {
    _perf ??= await SharedPreferences.getInstance();
  }

  Future<void> _initTheme() async {
    final Themes theme = await _getThemeFromStorage();
    state = theme;
  }

  void setTheme(Themes theme) {
    state = theme;
    _setThemeToStorage(theme);
  }

  Future<Themes> _getThemeFromStorage() async {
    await _init();

    final String? theme = _perf?.getString(Strings.kAppTheme);

    if (theme == null || theme.isEmpty) return Themes.light;

    switch (theme) {
      default:
        return Themes.light;
    }
  }

  Future<void> _setThemeToStorage(Themes theme) async {
    await _init();

    switch (theme) {
      case Themes.light:
        _perf?.setString(Strings.kAppTheme, Strings.kAppThemeLight);
    }
  }
}
