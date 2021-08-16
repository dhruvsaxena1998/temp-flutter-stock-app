import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stokish_flutter/global/theme/app_theme.dart';

ThemeData appTheme(AppTheme theme) {
  return ThemeData(
    primaryColor: theme.primary,
    scaffoldBackgroundColor: theme.background,
    backgroundColor: theme.background,
    cardColor: theme.foreground,
    accentColor: theme.accent,
    textTheme: TextTheme(
      headline6: GoogleFonts.fredokaOne(color: theme.title),
      caption: GoogleFonts.inter(color: theme.body),
      bodyText1: GoogleFonts.inter(color: theme.body),
      bodyText2: GoogleFonts.inter(color: theme.body),
    ),
    iconTheme: IconThemeData(
      color: theme.title,
    ),
  );
}
