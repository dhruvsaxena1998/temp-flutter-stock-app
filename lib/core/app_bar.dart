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
        padding: const EdgeInsets.symmetric(horizontal: 20),
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
    height: 100,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                InkWell(
                  onTap: () {},
                  child: const CircleAvatar(
                    backgroundImage: NetworkImage(Constants.avatar),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  'Hi, John',
                  style: Theme.of(context).textTheme.caption,
                )
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
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Text(
            'Welcome back ,',
            style: Theme.of(context).textTheme.headline5,
          ),
        ),
      ],
    ),
  );
}
