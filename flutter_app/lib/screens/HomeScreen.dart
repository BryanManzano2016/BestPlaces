import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {

    HomeScreen({Key key}) : super(key: key) {
        print("hola...");
    }

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            body: Center(child: Text("HomeScreen")),
            floatingActionButton: FloatingActionButton(
                tooltip: 'Add',
                child: Icon(Icons.add),
                onPressed: null,
            ),
        );
    }
}
