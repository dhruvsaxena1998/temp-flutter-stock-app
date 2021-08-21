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
    caption: GoogleFonts.inter(
      color: ThemeColors.bodyLight,
      letterSpacing: 1.2,
      fontSize: 12.80,
    ),
    bodyText1: GoogleFonts.inter(
      color: ThemeColors.bodyLight,
      fontSize: 14,
    ),
    bodyText2: GoogleFonts.inter(
      color: ThemeColors.bodyLight,
      fontSize: 12.80,
    ),
    button: GoogleFonts.inter(
      color: ThemeColors.titleLight,
      fontWeight: FontWeight.bold,
    ),
  ),
  pageTransitionsTheme: const PageTransitionsTheme(
    builders: <TargetPlatform, PageTransitionsBuilder>{
      TargetPlatform.android: CupertinoPageTransitionsBuilder(),
    },
  ),
);

final ThemeData dark = ThemeData(
  primaryColor: ThemeColors.primaryDark,
  scaffoldBackgroundColor: ThemeColors.backgroundDark,
  backgroundColor: ThemeColors.backgroundDark,
  cardColor: ThemeColors.foregroundDark,
  accentColor: ThemeColors.accent1,
  iconTheme: const IconThemeData(
    color: ThemeColors.titleDark,
  ),
  textTheme: TextTheme(
    headline6: GoogleFonts.fredokaOne(color: ThemeColors.titleDark),
    caption: GoogleFonts.inter(
      color: ThemeColors.bodyDark,
      letterSpacing: 1.2,
    ),
    bodyText1: GoogleFonts.inter(color: ThemeColors.bodyDark),
    bodyText2: GoogleFonts.inter(color: ThemeColors.bodyDark),
    button: GoogleFonts.inter(
      color: ThemeColors.titleDark,
      fontWeight: FontWeight.bold,
    ),
  ),
  pageTransitionsTheme: const PageTransitionsTheme(
    builders: <TargetPlatform, PageTransitionsBuilder>{
      TargetPlatform.android: CupertinoPageTransitionsBuilder(),
    },
  ),
);

final ThemeData amoled = ThemeData(
  primaryColor: ThemeColors.primaryAmoled,
  scaffoldBackgroundColor: ThemeColors.backgroundAmoled,
  backgroundColor: ThemeColors.backgroundAmoled,
  cardColor: ThemeColors.foregroundAmoled,
  accentColor: ThemeColors.accent1,
  iconTheme: const IconThemeData(
    color: ThemeColors.titleAmoled,
  ),
  textTheme: TextTheme(
    headline6: GoogleFonts.fredokaOne(color: ThemeColors.titleAmoled),
    caption: GoogleFonts.inter(
      color: ThemeColors.bodyAmoled,
      letterSpacing: 1.2,
    ),
    bodyText1: GoogleFonts.inter(color: ThemeColors.bodyAmoled),
    bodyText2: GoogleFonts.inter(color: ThemeColors.bodyAmoled),
    button: GoogleFonts.inter(
      color: ThemeColors.titleAmoled,
      fontWeight: FontWeight.bold,
    ),
  ),
  pageTransitionsTheme: const PageTransitionsTheme(
    builders: <TargetPlatform, PageTransitionsBuilder>{
      TargetPlatform.android: CupertinoPageTransitionsBuilder(),
    },
  ),
);

final ThemeData black = ThemeData(
  primaryColor: ThemeColors.primaryBlack,
  scaffoldBackgroundColor: ThemeColors.backgroundBlack,
  backgroundColor: ThemeColors.backgroundBlack,
  cardColor: ThemeColors.foregroundBlack,
  accentColor: ThemeColors.accent1,
  iconTheme: const IconThemeData(
    color: ThemeColors.titleBlack,
  ),
  textTheme: TextTheme(
    headline6: GoogleFonts.fredokaOne(color: ThemeColors.titleBlack),
    caption: GoogleFonts.inter(
      color: ThemeColors.bodyBlack,
      letterSpacing: 1.2,
    ),
    bodyText1: GoogleFonts.inter(color: ThemeColors.bodyBlack),
    bodyText2: GoogleFonts.inter(color: ThemeColors.bodyBlack),
    button: GoogleFonts.inter(
      color: ThemeColors.titleBlack,
      fontWeight: FontWeight.bold,
    ),
  ),
  pageTransitionsTheme: const PageTransitionsTheme(
    builders: <TargetPlatform, PageTransitionsBuilder>{
      TargetPlatform.android: CupertinoPageTransitionsBuilder(),
    },
  ),
);
