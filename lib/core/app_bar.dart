import 'package:flutter/material.dart';
import 'package:stokish_flutter/utils/constants.dart';

PreferredSizeWidget _appBar(
  BuildContext context, {
  required Widget child,
  double height = 45,
}) {
  return PreferredSize(
    preferredSize: Size.fromHeight(height),
    child: SafeArea(
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
    height: 70,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Column(
          children: const <Widget>[
            CircleAvatar(
              backgroundImage: NetworkImage(Constants.avatar),
            ),
          ],
        ),
        InkWell(
          onTap: () {},
          child: Icon(
            Icons.menu,
            color: Theme.of(context).iconTheme.color,
          ),
        ),
      ],
    ),
  );
}
