import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stokish_flutter/global/theme/app_theme.dart';

final StateNotifierProvider<ThemeProvider, Themes> themeController =
    StateNotifierProvider<ThemeProvider, Themes>((_) => ThemeProvider());

class ThemeProvider extends StateNotifier<Themes> {
  ThemeProvider() : super(Themes.light);

  void updateTheme(Themes theme) {
    state = theme;
  }
}
