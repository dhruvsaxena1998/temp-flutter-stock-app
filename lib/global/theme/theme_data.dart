import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:stokish_flutter/global/theme/colors.dart';

enum Themes { light }

ThemeData appTheme(Themes theme) {
  switch (theme) {
    case Themes.light:
      return light;
  }
}

final ThemeData light = ThemeData(
  primaryColor: ThemeColors.primaryLight,
  scaffoldBackgroundColor: ThemeColors.backgroundLight,
  backgroundColor: ThemeColors.backgroundLight,
  cardColor: ThemeColors.foregroundLight,
  accentColor: ThemeColors.accent1,
  pageTransitionsTheme: const PageTransitionsTheme(
    builders: <TargetPlatform, PageTransitionsBuilder>{
      TargetPlatform.android: CupertinoPageTransitionsBuilder(),
    },
  ),
  iconTheme: const IconThemeData(
    color: ThemeColors.titleLight,
  ),
  textTheme: TextTheme(
    headline4: GoogleFonts.fredokaOne(
      color: ThemeColors.titleLight,
      fontSize: 31.25,
    ),
    headline5: GoogleFonts.fredokaOne(
      color: ThemeColors.titleLight,
      fontSize: 25,
    ),
    headline6: GoogleFonts.fredokaOne(
      color: ThemeColors.titleLight,
      fontSize: 20,
    ),
    bodyText1: GoogleFonts.inter(
      color: ThemeColors.bodyLight,
      fontSize: 14,
    ),
    bodyText2: GoogleFonts.inter(
      color: ThemeColors.bodyLight,
      fontSize: 12.80,
    ),
    subtitle2: GoogleFonts.inter(
      color: ThemeColors.bodyLight,
      fontSize: 12.80,
    ),
    button: GoogleFonts.inter(
      color: ThemeColors.titleLight,
      fontWeight: FontWeight.bold,
    ),
    caption: GoogleFonts.robotoMono(
      color: ThemeColors.bodyLight,
      fontSize: 16,
    ),
  ),
);
