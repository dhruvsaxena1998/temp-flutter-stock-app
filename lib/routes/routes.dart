import 'package:flutter/material.dart';

import '../pages/home/home_page.dart';
import '../pages/settings/settings_page.dart';

final Map<String, Widget Function(BuildContext)> routes =
    <String, WidgetBuilder>{
  Home.route: (_) => const Home(),
  '/settings': (_) => const SettingsPage(),
};
