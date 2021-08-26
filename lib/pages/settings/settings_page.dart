import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stokish_flutter/global/theme/theme_data.dart';
import 'package:stokish_flutter/providers/theme_provider.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  Themes? theme;

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    final Color primary = Theme.of(context).primaryColor;
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ListTile(
              title: Text(
                'Light',
                style: textTheme.button,
              ),
              leading: Radio<Themes>(
                activeColor: primary,
                value: Themes.light,
                groupValue: theme,
                onChanged: (_) {
                  setState(() {
                    theme = Themes.light;
                  });

                  context
                      .read(themeController.notifier)
                      .updateTheme(Themes.light);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
