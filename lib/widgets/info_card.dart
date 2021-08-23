import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stokish_flutter/global/theme/theme_data.dart';
import 'package:stokish_flutter/providers/theme_provider.dart';
import 'package:stokish_flutter/utils/constants.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
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
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/settings');
            },
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
              ),
              child: Image.network(
                Constants.placeholderImage,
                fit: BoxFit.cover,
                height: 200,
                width: double.infinity,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const SizedBox(
                      height: 10,
                    ),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      '2.00 PM - 19/02/2021',
                      style: Theme.of(context).textTheme.subtitle2,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Read more',
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 16,
                        ),
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
