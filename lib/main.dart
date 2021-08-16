import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'core/bottom_nav_bar.dart';
import 'providers/theme_provider.dart';
import 'widgets/info_card.dart';

import 'global/theme/app_theme.dart';
import 'global/theme/theme_data.dart';

void main() {
  runApp(ProviderScope(child: App()));
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, watch, _) {
        return MaterialApp(
          title: 'Flutter Demo',
          theme: appTheme(AppTheme.getTheme(watch(themeController))),
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
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Consumer(
                  builder: (context, watch, _) {
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
                )
              ],
            ),
            const InfoCard(),
          ],
        ),
      ),
    );
  }
}
