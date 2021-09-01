import 'package:flutter/material.dart';

import 'pages/home/home_page.dart';
import 'routes/routes.dart';

MaterialApp app({required ThemeData theme}) {
  return MaterialApp(
    theme: theme,
    routes: routes,
    initialRoute: Home.route,
  );
}
