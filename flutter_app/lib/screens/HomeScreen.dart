import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutterapp/commun/Auxiliar.dart';
import 'package:flutterapp/commun/Constants.dart';
import 'package:flutterapp/models/City.dart';
import 'package:flutterapp/models/Country.dart';
import 'package:flutterapp/models/Place.dart';

class HomeScreen extends StatelessWidget {
    static Map size;
    HomeScreen({Key key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        size = sizeScreen(context, 8, 8);
        return SafeArea(
            child: Scaffold(
                body: Container(
                    decoration: gradientApp,
                    child: listComponents(context))
            )
        );
    }

    // Items of ListView
    ListView listComponents(BuildContext context) {
        return ListView(children: <Widget>[

            textHomeScreen("TOP COUNTRIES", sizeFont: 25, bold: true),
            Divider(color: Colors.transparent, height: 10,),
            Row(children: topPlaces(rankingByCountry(), context)),

            Divider(color: Colors.transparent, height: 20,),

            textHomeScreen("TOP CITIES", sizeFont: 25, bold: true),
            Divider(color: Colors.transparent, height: 10,),
            Container(child: Row(children: topPlaces(rankingByCity(), context))),

            Divider(color: Colors.transparent, height: 20,),
        ]);
    }

    // Generic functions
    // Items of row in listView
    List<Widget> topPlaces(List<Place> listFunc, BuildContext ctx) {
        List<Widget> items = [];
        listFunc.forEach((item) {
            items.add(Expanded(
                child: GestureDetector(
                    onTap: (){
                        print('Go to screen for place ${item.name}');
                    },
                    child: Container(
                        padding: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                            border: Border(
                                right: BorderSide(color: Colors.black),
                                left: BorderSide(color: Colors.black),
                            ),
                        ),
                        child: placeColumn(item),
                    ),
                ),
            ),
            );
        });
        return items;
    }

    Column placeColumn(Place place) {
        return Column(
            children: <Widget>[
                textHomeScreen(place.name, bold: true, sizeFont: 20),
                FlatButton(onPressed: null, child: iconByCountries(place.pathImage)),
                Container(
                    child: ListTile(
                        trailing: textHomeScreen(place.rating.toString() + "/10"),
                        title: IconButton(
                            icon: Icon(Icons.star, color: Colors.yellow),
                            onPressed: null,
                        ),
                    ),
                ),
            ],
        );
    }

    Text textHomeScreen(String str, {double sizeFont = 15, bool bold = true}) {
        return Text(str,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontWeight: (bold ? FontWeight.bold : FontWeight.normal),
                color: Colors.black,
                fontSize: sizeFont,
                fontFamily: 'OpenSans'));
    }

    // Async methods
    List<Place> rankingByCountry() {
        return [
            Country('1', 'Brazil', 4.8, 'brazil.png'),
            Country('2', 'Mexico', 3, 'mexico.png'),
            Country('3', 'Spain', 3.8, 'spain.png'),
        ];
    }

    List<Place> rankingByCity() {
        return [
            City('1', 'Brazil', 4.8, 'brazil.png'),
            City('2', 'Mexico', 3, 'spain.png'),
            City('3', 'Spain', 3.8, 'mexico.png')
        ];
    }
}
