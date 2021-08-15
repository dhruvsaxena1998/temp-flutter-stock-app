import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stokish_flutter/global/theme/app_theme.dart';
import 'package:stokish_flutter/providers/theme_provider.dart';
import 'package:stokish_flutter/utils/constants.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 5),
      decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).cardColor,
              blurRadius:
                  context.watch<ThemeProvider>().getTheme() == Themes.light
                      ? 30
                      : 10,
            )
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: Image.network(
              Constants.placeholderImage,
              fit: BoxFit.cover,
              height: MediaQuery.of(context).size.height * 0.25,
              width: double.infinity,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Supertrend x3',
                  style: Theme.of(context).textTheme.headline6,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  // ignore: lines_longer_than_80_chars
                  'Lorem ipsum dolor sit amet consectetur adipisicing elit.Porro laboriosam recusandae dolorum libero. Nostrum rem earum, consequuntur odio eligendi nesciunt ab dolor? Sint possimus ipsa alias molestias? Reprehenderit, consequatur nisi.',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('2.00 PM - 19/02/2021',
                  style: Theme.of(context).textTheme.bodyText2),
              TextButton(
                onPressed: () {
                  context.read<ThemeProvider>().setAppTheme(Themes.black);
                },
                child: const Text('Read more'),
              )
            ],
          )
        ],
      ),
    );
  }
}