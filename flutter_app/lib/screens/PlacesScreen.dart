import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutterapp/commun/Auxiliar.dart';
import 'package:flutterapp/commun/Constants.dart';
import 'ScreenRankingPlaces.dart';

class PlacesScreen extends StatelessWidget {
    // PlacesScreen({Key key}) : super(key: key);
    @override
    Widget build(BuildContext context) {
        return SafeArea(
            child: Scaffold(
                body: Container(
                    decoration: gradientApp,
                    child: optionsPlaces(context)
                )
            )
        );
    }

    Widget optionsPlaces(BuildContext context) {
        Map size = sizeScreen(context, 5, 0);
        return ListView(
            padding: EdgeInsets.all(10),
            children: <Widget>[
                containerTypePlace(context, "countries", size['hg']/3, 'countries.jpg'),
                Divider(color: Colors.grey),
                containerTypePlace(context, "cities", size['hg']/3, 'cities.jpg'),
                Divider(color: Colors.white),
            ],
        );
    }

    Widget containerTypePlace(BuildContext context, String title, double heightField,
            String pathImage){
        return Container(
            height: heightField,
            child: Stack(
                alignment: const Alignment(0, 1),
                children: [
                    FlatButton(
                        onPressed: () {
                            goToScreenLess(context,
                                ScreenRankingPlaces(placesby: title));
                        },
                        child: imageWithRadious(pathImage, 16)
                    ),
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(4)),
                        child: textTitleOption(title.toUpperCase()),
                    ),
                ],
            ));
    }

    Text textTitleOption(String text){
        return Text(
            text,
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
            ),
            textAlign: TextAlign.center,
        );
    }
}
