import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Theme.of(context).cardColor,
              blurRadius: context.read(themeController) == Themes.light ? 5 : 0,
            )
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Theme.of(context).backgroundColor,
                  blurRadius: 30,
                  offset: const Offset(5, 5),
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Image.network(
                Constants.placeholderImage,
                fit: BoxFit.cover,
                height: MediaQuery.of(context).size.height * 0.25,
                width: double.infinity,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
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
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      '2.00 PM - 19/02/2021',
                      style: Theme.of(context).textTheme.caption,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Read more',
                        style: TextStyle(color: Theme.of(context).primaryColor),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class InfoCardV2 extends StatelessWidget {
  const InfoCardV2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.all(20),
        padding: const EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 5),
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: BorderRadius.circular(25),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Theme.of(context).cardColor,
              blurRadius: context.read(themeController) == Themes.light ? 5 : 0,
            )
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Supertrend x3',
                  style: Theme.of(context).textTheme.headline6,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: Theme.of(context).backgroundColor,
                        blurRadius: 30,
                        offset: const Offset(5, 5),
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: Image.network(
                      Constants.placeholderImage,
                      fit: BoxFit.cover,
                      height: MediaQuery.of(context).size.height * 0.25,
                      width: double.infinity,
                    ),
                  ),
                ),
                Text(
                  // ignore: lines_longer_than_80_chars
                  'Lorem ipsum dolor sit amet consectetur adipisicing elit.Porro laboriosam recusandae dolorum libero. Nostrum rem earum, consequuntur odio eligendi nesciunt ab dolor? Sint possimus ipsa alias molestias? Reprehenderit, consequatur nisi.',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  '2.00 PM - 19/02/2021',
                  style: Theme.of(context).textTheme.caption,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Read more',
                    style: TextStyle(color: Theme.of(context).primaryColor),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
