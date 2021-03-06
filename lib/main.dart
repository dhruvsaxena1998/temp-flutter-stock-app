import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app.dart';
import 'global/theme/theme_data.dart';
import 'providers/theme_provider.dart';
import 'shared/methods.dart';

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

        setSystemUiOverlayStyle(
          theme: theme,
          themeData: themeData,
        );

        return app(theme: themeData);
      },
    );
  }
}
