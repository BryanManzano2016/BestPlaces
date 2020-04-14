import 'package:flutter/material.dart';

class ScreenRankingPlaces extends StatelessWidget {
    final String placesby;
    ScreenRankingPlaces({Key key, this.placesby}) : super(key: key);
    @override
    Widget build(BuildContext context) {
        return SafeArea(
            child: Scaffold(
                body: RankingList(),
            ));
    }
}

class