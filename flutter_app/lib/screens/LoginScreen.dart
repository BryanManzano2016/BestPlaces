import 'package:flutter/material.dart';
import 'package:flutterapp/commun/Auxiliar.dart';

class LoginScreen extends StatelessWidget{
    @override
    Widget build(BuildContext context) {
        return SafeArea(
            child: Scaffold(
                appBar: AppBar(
                    leading: iconButtonBack(context),
                ),
                body: null,
            ),
        );
    }
}
