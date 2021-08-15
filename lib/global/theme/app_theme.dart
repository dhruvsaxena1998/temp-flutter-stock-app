import 'package:flutter/material.dart';

import 'package:stokish_flutter/global/theme/colors.dart';

enum Themes { light, dark, black }

class AppTheme {
  AppTheme({
    required this.primary,
    required this.accent,
    required this.background,
    required this.foreground,
    required this.title,
    required this.body,
    this.info = ThemeColors.info,
    this.success = ThemeColors.success,
    this.danger = ThemeColors.danger,
    this.warning = ThemeColors.warning,
  });

  final Color primary;
  final Color accent;
  final Color background;
  final Color foreground;
  final Color title;
  final Color body;
  final Color success;
  final Color info;
  final Color warning;
  final Color danger;

  static AppTheme light = AppTheme(
    primary: ThemeColors.primaryLight,
    accent: ThemeColors.accent2,
    background: ThemeColors.backgroundLight,
    foreground: ThemeColors.foregroundLight,
    title: ThemeColors.titleLight,
    body: ThemeColors.bodyLight,
  );

  static AppTheme dark = AppTheme(
    primary: ThemeColors.primaryDark,
    accent: ThemeColors.accent1,
    background: ThemeColors.backgroundDark,
    foreground: ThemeColors.foregroundDark,
    title: ThemeColors.titleDark,
    body: ThemeColors.bodyDark,
  );

  static AppTheme black = AppTheme(
    primary: ThemeColors.primaryBlack,
    accent: ThemeColors.accent2,
    background: ThemeColors.backgroundBlack,
    foreground: ThemeColors.foregroundBlack,
    title: ThemeColors.titleBlack,
    body: ThemeColors.bodyBlack,
  );
}
