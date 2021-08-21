import 'package:flutter/material.dart';

import 'package:stokish_flutter/pages/settings/settings_page.dart';

final Map<String, Widget Function(BuildContext)> routes =
    <String, WidgetBuilder>{
  '/settings': (_) => const SettingsPage(),
};
