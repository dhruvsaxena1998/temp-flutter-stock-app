import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:stokish_flutter/global/theme/theme_data.dart';

void setSystemUiOverlayStyle({
  required Themes theme,
  required ThemeData themeData,
}) {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: themeData.backgroundColor,
      systemNavigationBarColor: themeData.backgroundColor,
      statusBarIconBrightness:
          theme == Themes.light ? Brightness.dark : Brightness.light,
      systemNavigationBarIconBrightness:
          theme == Themes.light ? Brightness.dark : Brightness.light,
    ),
  );
}
