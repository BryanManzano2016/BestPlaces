import 'package:flutter/material.dart';
import 'screens/ComparePlacesScreen.dart';
import 'screens/HomeScreen.dart';
import 'screens/PlacesScreen.dart';

void main() => runApp(MainScreen());

class MainScreen extends StatelessWidget {
    MainScreen({Key key}) : super(key: key);

    Widget build(BuildContext context) {
        return MaterialApp(
            theme: ThemeData(
                brightness: Brightness.dark,
                primarySwatch: Colors.blue,
            ),
            darkTheme: ThemeData(
                brightness: Brightness.dark,
                primarySwatch: Colors.blue
            ),
            home: DefaultTabController(
                length: 3,
                child: Scaffold(
                    appBar: AppBar(
                        leading: IconButton(icon: Icon(Icons.access_alarm), onPressed: null),
                        bottom: TabBar(
                            tabs: [
                                Tab(icon: Icon(Icons.home)),
                                Tab(icon: Icon(Icons.place)),
                                Tab(icon: Icon(Icons.compare)),
                            ],
                        ),
                        actions: <Widget>[
                            IconButton(icon: Icon(Icons.account_box), onPressed: null)
                        ],
                        title: null,
                    ),
                    body: TabBarView(
                        children: [
                            HomeScreen(),
                            PlacesScreen(),
                            ComparePlacesScreen(),
                        ],
                    ),
                ),
            ),
        );
    }
}

