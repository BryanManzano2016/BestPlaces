import 'package:flutter/material.dart';

class ComparePlacesScreen extends StatelessWidget {
    // ComparePlacesScreen({Key key}) : super(key: key);
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            body: Center(child: Column(children: <Widget>[
                Text("Holaa"),Divider(),Text("Holaa"),Divider(),Text("Holaa"),Divider()
            ],)),
            floatingActionButton: FloatingActionButton(
                tooltip: 'Add',
                child: Icon(Icons.add),
                onPressed: null,
            ),
        );
    }
}
