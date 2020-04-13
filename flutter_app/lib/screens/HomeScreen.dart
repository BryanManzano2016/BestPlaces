import 'package:flutter/material.dart';
import 'package:flutterapp/commun/Auxiliar.dart';

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
            )
        );
    }

    ListView listComponents(BuildContext context) {
        return ListView(
            children: <Widget>[
                titleSection("Top 3 - Countries"),
                    Row(
                        children: <Widget>[
                            Column(
                                children: <Widget>[
                                    FlatButton(
                                        onPressed: null,
                                        child: iconByCountries("brazil.png")
                                    ),
                                    titlePlaces("Brazil")
                                ],
                            ),
                            Column(
                                children: <Widget>[
                                    FlatButton(
                                        onPressed: null,
                                        child: iconByCountries("algeria.png")
                                    ),
                                    titlePlaces("algeria")
                                ],
                            ),
                            Column(
                                children: <Widget>[
                                    FlatButton(
                                        onPressed: null,
                                        child: iconByCountries("aruba.png")
                                    ),
                                    titlePlaces("aruba")
                                ],
                            ),
                        ],
                    ),
                Divider(color: Colors.black),
                titleSection("Top 3 - Cities"),

                Divider(color: Colors.black),
                titleSection("Trend Country"),

                Divider(color: Colors.black),
                titleSection("Trend city"),
            ]);
    }

    List<Widget> topCountries(){
        return null;
    }

    Text titleSection(String str){
        return Text(str, textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,
                fontFamily: 'OpenSans')
        );
    }
    Text titlePlaces(String str){
        return Text(str, textAlign: TextAlign.center,
            style: TextStyle(fontSize: 14, fontFamily: 'OpenSans')
        );
    }
}


