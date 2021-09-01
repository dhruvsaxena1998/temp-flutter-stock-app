import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/constants.dart';

PreferredSizeWidget _appBar(
  BuildContext context, {
  required Widget child,
  double height = MagicNumbers.appBarHeight,
}) {
  return PreferredSize(
    preferredSize: Size.fromHeight(height),
    child: SafeArea(
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.all(MagicNumbers.margin),
        padding: const EdgeInsets.symmetric(horizontal: MagicNumbers.padding),
        decoration: BoxDecoration(
          color: Theme.of(context).backgroundColor,
        ),
        child: child,
      ),
    ),
  );
}

// ignore: non_constant_identifier_names
PreferredSizeWidget HomeAppBar(BuildContext context) {
  return _appBar(
    context,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        InkWell(
          onTap: () {},
          child: SvgPicture.asset(
            AppIcons.menu,
            height: FontSize.svgIcon,
            color: Theme.of(context).iconTheme.color,
          ),
        ),
        InkWell(
          onTap: () {},
          child: Container(
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(
                MagicNumbers.borderRadius,
              ),
              boxShadow: <BoxShadow>[
                BoxShadow(
                  blurRadius: MagicNumbers.blurRadius,
                  color: Theme.of(context).cardColor,
                )
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(
                MagicNumbers.borderRadius,
              ),
              child: Image.asset(
                placeholderAvatar,
                height: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),
        )
      ],
    ),
  );
}

// ignore: non_constant_identifier_names
PreferredSizeWidget CustomAppBar(BuildContext context, {String? title}) {
  final IconThemeData iconTheme = Theme.of(context).iconTheme;
  return _appBar(
    context,
    child: Row(
      children: <Widget>[
        if (Navigator.canPop(context))
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios,
              color: iconTheme.color,
              size: iconTheme.size,
            ),
          ),
        if (title != null)
          Row(
            children: <Widget>[
              const SizedBox(
                width: MagicNumbers.sizedBoxWidth,
              ),
              Text(
                title,
                style: Theme.of(context).textTheme.headline6,
              )
            ],
          )
      ],
    ),
  );
}
