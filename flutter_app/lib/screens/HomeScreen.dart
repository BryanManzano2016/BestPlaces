import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutterapp/commun/Auxiliar.dart';
import 'package:flutterapp/models/City.dart';
import 'package:flutterapp/models/Country.dart';
import 'package:flutterapp/models/Place.dart';

class HomeScreen extends StatelessWidget {
    HomeScreen({Key key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return SafeArea(
            child: Scaffold(
                body: Padding(child: listComponents(context), padding: EdgeInsets.all(10)),
                floatingActionButton: FloatingActionButton(
                    tooltip: 'Add',
                    child: Icon(Icons.add),
                    onPressed: null,
                ),
            ));
    }

    ListView listComponents(BuildContext context) {
        return ListView(children: <Widget>[
            titleSection("Top 3 - Countries"),
            Container(child: Row(children: topPlaces(rankingByCountry(), context))),
            Divider(),
            titleSection("Top 3 - Cities"),
            Container(child: Row(children: topPlaces(rankingByCity(), context))),
            titleSection("Trend Country"),
            titleSection("Trend city"),
        ]);
    }

    // Generic functions
    List<Widget> topPlaces(List<Place> listFunc, BuildContext ctx) {
        List<Widget> items = [];
        listFunc.forEach((item) {
            items.add(Expanded(
                child: Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        border: Border.all(
                            color: Colors.black,
                            width: 1,
                        ),
                        borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                        children: <Widget>[
                            FlatButton(onPressed: null, child: iconByCountries(item.pathImage)),
                            titlePlaces(item.name),
                            titlePlaces(item.rating.toString()),
                            Container(
                                width: 120,
                                child: Row(
                                    children: <Widget>[
                                        Container(
                                            width: 15,
                                          child: IconButton(
                                              iconSize: 15,
                                              icon: Icon(Icons.star),
                                              tooltip: 'Rating',
                                              onPressed: null,
                                          ),
                                        ),
                                        Container(
                                            width: 15,
                                          child: IconButton(
                                              iconSize: 15,
                                              icon: Icon(Icons.star),
                                              tooltip: 'Rating',
                                              onPressed: null,
                                          ),
                                        ),
                                        Container(
                                            width: 15,
                                            child: IconButton(
                                                iconSize: 15,
                                                icon: Icon(Icons.star),
                                                tooltip: 'Rating',
                                                onPressed: null,
                                            ),
                                        ),
                                        Container(
                                            width: 15,
                                            child: IconButton(
                                                iconSize: 15,
                                                icon: Icon(Icons.star),
                                                tooltip: 'Rating',
                                                onPressed: null,
                                            ),
                                        ),
                                        Container(
                                            width: 15,
                                            child: IconButton(
                                                iconSize: 15,
                                                icon: Icon(Icons.star),
                                                tooltip: 'Rating',
                                                onPressed: null,
                                            ),
                                        )
                                    ],
                                ),
                            ),
                        ],
                    ),
                ),
            ));
        });
        return items;
    }

    Text titleSection(String str) {
        return Text(str,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.bold,
                fontFamily: 'OpenSans'));
    }

    Text titlePlaces(String str) {
        return Text(str,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white, fontSize: 14, fontFamily: 'OpenSans'));
    }

    List<Widget> starsOfPlaces(num rating) {
        List<Widget> stars = [];
        var count = 0;
        if(0 < rating && rating <= 1){
            count = 1;
        } else if(1 < rating && rating <= 2){
            count = 2;
        } else if(2 < rating && rating <= 3){
            count = 3;
        } else if(3 < rating && rating <= 4){
            count = 4;
        } else if(4 < rating && rating <= 5){
            count = 5;
        }
        for(var i = 0; i < count; i++){
            stars.add(
                IconButton(
                    icon: Icon(Icons.star),
                    tooltip: 'Rating',
                    onPressed: null,
                )
            );
        }
        return stars;
    }

    // Async methods
    List<Place> rankingByCountry() {
        return [
            Country('1', 'Brazil', 4.8, 'brazil.png'),
            Country('2', 'Mexico', 3, 'mexico.png'),
            Country('3', 'Spain', 3.8, 'spain.png')
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
