import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutterapp/commun/Auxiliar.dart';

class ScreenRAnkingPlaces extends StatelessWidget {
    final String placesby;
    ScreenRAnkingPlaces({Key key, this.placesby}) : super(key: key);
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                leading: iconButtonBack(context),
                title: Text("Ranking by ${this.placesby}"),
            ),
            body: Center(child: Text(this.placesby)),
            floatingActionButton: FloatingActionButton(
                tooltip: 'Search',
                child: Icon(Icons.search),
                onPressed: null,
            ),
        );
    }
}
