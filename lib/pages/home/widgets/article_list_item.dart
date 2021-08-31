import 'package:flutter/material.dart';
import 'package:stokish_flutter/utils/constants.dart';

class ArticleListItem extends StatelessWidget {
  const ArticleListItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(MagicNumbers.borderRadius),
      ),
      child: Row(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(MagicNumbers.borderRadius),
            child: Image.network(
              placeholderItemImage,
              width: MagicNumbers.listItemImageWidth,
              height: MagicNumbers.listItemHeight,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(MagicNumbers.padding),
              height: MagicNumbers.listItemHeight,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text(
                        'What skills are required for ui designer.',
                        style: textTheme.headline6,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(
                        height: MagicNumbers.sizedBoxHeight,
                      ),
                      Text(
                        placeholderText,
                        style: textTheme.bodyText2,
                        maxLines: 2,
                        overflow: TextOverflow.fade,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        '31 mins ago',
                        style: textTheme.subtitle2,
                      ),
                      Text(
                        '544',
                        style: textTheme.subtitle2,
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
