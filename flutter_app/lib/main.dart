import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterapp/commun/Auxiliar.dart';
import 'package:flutterapp/screens/LoginScreen.dart';
import 'screens/HomeScreen.dart';
import 'screens/PlacesScreen.dart';

void main() {
    startApp(darkMode: false, horizontalMode: true);
}

void startApp({bool horizontalMode = false, bool darkMode = false}){
    final Brightness darkBool = (darkMode ? Brightness.dark : Brightness.light);
    final ThemeData themeValue = ThemeData( brightness: darkBool,
        primarySwatch: Colors.blue);
    final ThemeData darkThemeValue = ThemeData(brightness: darkBool,
        primarySwatch: Colors.blue);

    if(!horizontalMode){
        WidgetsFlutterBinding.ensureInitialized();
        SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
            .then((_) {
            runApp(MaterialApp(
                theme: themeValue,
                darkTheme: darkThemeValue,
                debugShowCheckedModeBanner: false,
                home: MainScreen(),
            ));
        });
    } else {
        runApp(MaterialApp(
            theme: themeValue,
            darkTheme: darkThemeValue,
            debugShowCheckedModeBanner: false,
            home: MainScreen(),
        ));
    }
}

class MainScreen extends StatelessWidget {
    MainScreen({Key key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return SafeArea(
            child: DefaultTabController(
                initialIndex: 0,
                length: 2,
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
                                        goToScreenFul(context, LoginScreen());
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
    ];
    final List<Widget> _childrenTarBar = [
        Tab(icon: Icon(Icons.home)),
        Tab(icon: Icon(Icons.place)),
    ];
}




