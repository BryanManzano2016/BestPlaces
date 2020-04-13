import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutterapp/commun/Auxiliar.dart';
import 'ScreenRankingPlaces.dart';

class PlacesScreen extends StatelessWidget {
    // PlacesScreen({Key key}) : super(key: key);
    @override
    Widget build(BuildContext context) {
        return SafeArea(
            child: Scaffold(
                body: optionsPlaces(context),
                floatingActionButton: FloatingActionButton(
                    tooltip: 'Add',
                    child: Icon(Icons.access_time),
                    onPressed: null,
                ),
            )
        );
    }

    Widget optionsPlaces(BuildContext context) {
        Map size = sizeScreen(context, 5, 0);
        return ListView(
            padding: EdgeInsets.all(10),
            children: <Widget>[
                Container(
                    height: size['hg'] / 3,
                    child: Stack(
                        alignment: const Alignment(0, 1),
                        children: [
                            FlatButton(
                                onPressed: () {
                                    goToScreenLess(context,
                                        ScreenRankingPlaces(placesby: 'countries'));
                                },
                                child: imageWithRadious("countries.jpg", 16)
                            ),
                            Container(
                                width: size['wd'] / 2,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(16)),
                                child: Text(
                                    'COUNTRIES',
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                    ),
                                    textAlign: TextAlign.center,
                                ),
                            ),
                        ],
                    )),
                Divider(color: Colors.white),
                Container(
                    height: size['hg'] / 3,
                    child: Stack(
                        textDirection: TextDirection.rtl,
                        alignment: const Alignment(0, 1),
                        children: [
                            FlatButton(
                                onPressed: () {
                                    goToScreenLess(context,
                                        ScreenRankingPlaces(placesby: 'cities'));
                                },
                                child: imageWithRadious('cities.jpg', 16)),
                            Container(
                                width: size['wd'] / 2,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(16)),
                                child: Text(
                                    'CITIES',
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                    ),
                                    textAlign: TextAlign.center,
                                ),
                            ),
                        ],
                    )
                ),
                Divider(color: Colors.white),
            ],
        );
    }
}
