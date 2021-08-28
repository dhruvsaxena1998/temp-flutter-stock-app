import 'package:flutter/material.dart';
import 'package:stokish_flutter/pages/home/home_page.dart';

import 'package:stokish_flutter/pages/settings/settings_page.dart';

final Map<String, Widget Function(BuildContext)> routes =
    <String, WidgetBuilder>{
  Home.route: (_) => const Home(),
  '/settings': (_) => const SettingsPage(),
};
