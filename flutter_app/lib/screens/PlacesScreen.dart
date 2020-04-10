import 'package:flutter/material.dart';

class PlacesScreen extends StatelessWidget {
    // PlacesScreen({Key key}) : super(key: key);
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            body: Center(child: Text("PlacesScreen")),
            floatingActionButton: FloatingActionButton(
                tooltip: 'Add',
                child: Icon(Icons.access_time),
                onPressed: null,
            ),
        );
    }
}
