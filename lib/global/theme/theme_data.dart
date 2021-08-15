import 'package:flutter/material.dart';
import 'package:stokish_flutter/global/theme/app_theme.dart';

ThemeData appTheme(AppTheme theme) {
  return ThemeData(
    primaryColor: theme.primary,
    scaffoldBackgroundColor: theme.background,
    backgroundColor: theme.background,
    cardColor: theme.foreground,
    accentColor: theme.accent,
    textTheme: TextTheme(
      headline6: TextStyle(color: theme.title),
      bodyText1: TextStyle(color: theme.body),
      bodyText2: TextStyle(color: theme.body),
    ),
  );
}
