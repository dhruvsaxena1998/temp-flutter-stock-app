import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:stokish_flutter/global/theme/colors.dart';
import 'package:stokish_flutter/utils/constants.dart';

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
    size: FontSize.icon,
  ),
  textTheme: TextTheme(
    headline4: GoogleFonts.tenorSans(
      color: ThemeColors.titleLight,
      fontSize: FontSize.headline4,
    ),
    headline5: GoogleFonts.tenorSans(
      color: ThemeColors.titleLight,
      fontSize: FontSize.headline5,
      fontWeight: FontWeight.bold,
    ),
    headline6: GoogleFonts.tenorSans(
      color: ThemeColors.titleLight,
      fontSize: FontSize.headline6,
      fontWeight: FontWeight.bold,
    ),
    bodyText1: GoogleFonts.inter(
      color: ThemeColors.bodyLight,
      fontSize: FontSize.bodyText1,
    ),
    bodyText2: GoogleFonts.inter(
      color: ThemeColors.bodyLight,
      fontSize: FontSize.bodyText2,
    ),
    subtitle2: GoogleFonts.inter(
      color: ThemeColors.bodyLight,
      fontSize: FontSize.subtitle2,
    ),
    button: GoogleFonts.inter(
      color: ThemeColors.titleLight,
      fontWeight: FontWeight.bold,
    ),
    caption: GoogleFonts.robotoMono(
      color: ThemeColors.bodyLight,
      fontSize: FontSize.caption,
    ),
  ),
);
