import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'core/bottom_nav_bar.dart';

import 'global/theme/app_theme.dart';
import 'global/theme/theme_data.dart';

import 'providers/theme_provider.dart';
import 'widgets/info_card.dart';

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
        final AppTheme appThemeData = AppTheme.getTheme(theme);

        SystemChrome.setSystemUIOverlayStyle(
          SystemUiOverlayStyle(
            statusBarColor: appThemeData.background,
            systemNavigationBarColor: appThemeData.background,
            statusBarIconBrightness:
                theme == Themes.light ? Brightness.dark : Brightness.light,
            systemNavigationBarIconBrightness:
                theme == Themes.light ? Brightness.dark : Brightness.light,
          ),
        );

        return MaterialApp(
          title: 'Flutter Demo',
          theme: appTheme(appThemeData),
          home: const Home(),
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  void _changeTabIndex(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavBar(
        index: _selectedIndex,
        callback: _changeTabIndex,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Consumer(
                    builder: (
                      BuildContext context,
                      T Function<T>(ProviderBase<Object?, T>) watch,
                      _,
                    ) {
                      final Themes theme = watch(themeController);

                      return IconButton(
                        onPressed: () {
                          context.read(themeController.notifier).updateTheme(
                                theme == Themes.light
                                    ? Themes.dark
                                    : theme == Themes.dark
                                        ? Themes.black
                                        : Themes.light,
                              );
                        },
                        icon: Icon(
                          theme == Themes.light
                              ? Icons.mode_night_rounded
                              : theme == Themes.dark
                                  ? Icons.dark_mode
                                  : Icons.wb_sunny_rounded,
                          color: Theme.of(context).iconTheme.color,
                        ),
                      );
                    },
                  ),
                ],
              ),
              const InfoCard(),
              const InfoCardV2(),
            ],
          ),
        ),
      ),
    );
  }
}
