import 'package:flutter/material.dart';

PreferredSizeWidget _appBar(
  BuildContext context, {
  required Widget child,
  double height = 40,
}) {
  return PreferredSize(
    preferredSize: Size.fromHeight(height),
    child: SafeArea(
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(color: Theme.of(context).backgroundColor),
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
      children: <Widget>[
        if (Navigator.canPop(context))
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back,
              size: 18,
            ),
          ),
        const SizedBox(
          width: 20,
        ),
        const Text('Hello World')
      ],
    ),
  );
}
