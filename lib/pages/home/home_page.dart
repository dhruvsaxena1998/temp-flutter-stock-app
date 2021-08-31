import 'package:flutter/material.dart';
import 'package:stokish_flutter/core/app_bar.dart';
import 'package:stokish_flutter/pages/home/widgets/article_list_item.dart';
import 'package:stokish_flutter/utils/constants.dart';
import 'package:stokish_flutter/pages/home/widgets/top_rated_article_card.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  static const String route = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(context),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(MagicNumbers.padding),
            child: Column(
              children: const <Widget>[
                TopRatedArticleCard(),
                Divider(
                  thickness: MagicNumbers.dividerThickness,
                ),
                ArticleListItem(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
