import 'package:flutter/material.dart';
import 'package:stokish_flutter/core/app_bar.dart';

import 'package:stokish_flutter/widgets/info_card.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(context),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: const <Widget>[
              InfoCard(),
            ],
          ),
        ),
      ),
    );
  }
}
