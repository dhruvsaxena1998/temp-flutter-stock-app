import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'global/theme/theme_data.dart';

import 'providers/theme_provider.dart';
import 'routes/routes.dart';
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

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: HomeAppBar(context),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: const <Widget>[
              InfoCard(),
            ],
          ),
        ),
      ),
    );
  }
}
