import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:stokish_flutter/core/bottom_nav_bar.dart';
import 'package:stokish_flutter/global/theme/app_theme.dart';

import 'package:stokish_flutter/global/theme/theme_data.dart';
import 'package:stokish_flutter/providers/providers.dart';

import 'package:stokish_flutter/providers/theme_provider.dart';

import 'package:stokish_flutter/widgets/info_card.dart';

void main() {
  runApp(MultiProvider(
    providers: providers,
    child: const App(),
  ));
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.watch<ThemeProvider>().getAppTheme();

    // return ChangeNotifierProvider(
    //   create: (_) => ThemeProvider(Themes.light),
    //   child: Consumer<ThemeProvider>(builder: (context, theme, _) {
    //     return MaterialApp(
    //       title: 'Flutter Demo',
    //       theme: appTheme(theme.getAppTheme()),
    //       home: const Home(),
    //     );
    //   }),
    // );

    return MaterialApp(
      title: 'Flutter Demo',
      theme: appTheme(theme),
      home: const Home(),
      debugShowCheckedModeBanner: false,
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
                Consumer<ThemeProvider>(
                  builder: (context, value, _) {
                    final isLightTheme = value.getTheme() == Themes.light;

                    return IconButton(
                      onPressed: () {
                        value.setAppTheme(
                          isLightTheme ? Themes.dark : Themes.light,
                        );
                      },
                      icon: Icon(
                        isLightTheme
                            ? Icons.mode_night_rounded
                            : Icons.wb_sunny_rounded,
                        color: value.getAppTheme().title,
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
