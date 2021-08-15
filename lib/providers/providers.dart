import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import 'package:stokish_flutter/global/theme/app_theme.dart';

import 'package:stokish_flutter/providers/theme_provider.dart';

List<SingleChildWidget> providers = [
  ChangeNotifierProvider(create: (_) => ThemeProvider(Themes.light)),
];
