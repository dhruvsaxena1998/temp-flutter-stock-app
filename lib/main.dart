import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stokish_flutter/pages/home/home_page.dart';

import 'global/theme/theme_data.dart';

import 'providers/theme_provider.dart';
import 'routes/routes.dart';

void main() {
  runApp(const ProviderScope(child: App()));
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (
        BuildContext context,
        T Function<T>(ProviderBase<Object?, T>) watch,
        _,
      ) {
        final Themes theme = watch(themeController);
        final ThemeData themeData = appTheme(theme);

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

        return MaterialApp(
          title: 'Flutter Demo',
          theme: themeData,
          home: const Home(),
          debugShowCheckedModeBanner: false,
          routes: routes,
        );
      },
    );
  }
}
