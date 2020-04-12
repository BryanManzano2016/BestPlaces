import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterapp/commun/Auxiliar.dart';
import 'package:flutterapp/screens/LoginScreen.dart';
import 'screens/ComparePlacesScreen.dart';
import 'screens/HomeScreen.dart';
import 'screens/PlacesScreen.dart';

void main() {
    WidgetsFlutterBinding.ensureInitialized();
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
        .then((_) {
        runApp(MaterialApp(
            theme: ThemeData(
                brightness: Brightness.dark,
                primarySwatch: Colors.blue,
            ),
            darkTheme: ThemeData(brightness: Brightness.dark, primarySwatch: Colors.blue),
            home: MainScreen(),
        ));
    });
}

class MainScreen extends StatelessWidget {
    MainScreen({Key key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return SafeArea(
            child: DefaultTabController(
                length: 3,
                child: Scaffold(
                    appBar: PreferredSize(
                        preferredSize: Size.fromHeight(80.0),
                        child: AppBar(
                            title: null,
                            leading: null,
                            bottom: TabBar(
                                tabs: _childrenTarBar,
                            ),
                            actions: <Widget>[
                                IconButton(
                                    icon: Icon(Icons.account_box),
                                    onPressed: () {
                                        goToScreenLess(context, LoginScreen());
                                    },
                                )
                            ],
                        )
                    ),
                    body: TabBarView(
                        children: _childrenTarBarView,
                    ),
                ),
            ),
        );
    }

    final List<Widget> _childrenTarBarView = [
        HomeScreen(),
        PlacesScreen(),
        ComparePlacesScreen(),
    ];
    final List<Widget> _childrenTarBar = [
        Tab(icon: Icon(Icons.home)),
        Tab(icon: Icon(Icons.place)),
        Tab(icon: Icon(Icons.compare)),
    ];
}

