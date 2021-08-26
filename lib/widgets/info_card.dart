import 'package:flutter/material.dart';
import 'package:stokish_flutter/utils/constants.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    final Color cardColor = Theme.of(context).cardColor;

    return Container(
      margin: const EdgeInsets.all(MagicNumbers.margin),
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(MagicNumbers.borderRadius),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: cardColor,
            blurRadius: MagicNumbers.blurRadius,
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/settings');
            },
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(MagicNumbers.borderRadius),
                topRight: Radius.circular(MagicNumbers.borderRadius),
              ),
              child: Image.network(
                placeholderImage,
                fit: BoxFit.cover,
                height: MagicNumbers.cardImageHeight,
                width: double.infinity,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: MagicNumbers.padding,
            ),
            child: Column(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const SizedBox(
                      height: MagicNumbers.sizedBoxHeight,
                    ),
                    Text(
                      'Supertrend x3',
                      style: textTheme.headline6,
                    ),
                    const SizedBox(
                      height: MagicNumbers.sizedBoxHeight,
                    ),
                    Text(
                      // ignore: lines_longer_than_80_chars
                      'Lorem ipsum dolor sit amet consectetur adipisicing elit.Porro laboriosam recusandae dolorum libero. Nostrum rem earum, consequuntur odio eligendi nesciunt ab dolor? Sint possimus ipsa alias molestias? Reprehenderit, consequatur nisi.',
                      style: textTheme.bodyText1,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      '2.00 PM - 19/02/2021',
                      style: textTheme.subtitle2,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Read more',
                        style: textTheme.bodyText2!
                            .copyWith(color: Theme.of(context).primaryColor),
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
