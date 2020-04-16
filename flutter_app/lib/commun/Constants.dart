import 'package:flutter/material.dart';

enum Continent {
    Africa,
    Asia,
    America,
    Europa,
    Oceania
}

final kHintTextStyle = TextStyle(
    color: Colors.black,
    fontFamily: 'OpenSans',
);

final kLabelStyle = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.bold,
    fontFamily: 'OpenSans',
);

final kBoxDecorationStyle = BoxDecoration(
    color: Color(0xFF6CA8F1),
    borderRadius: BorderRadius.circular(10.0),
    boxShadow: [
        BoxShadow(
            color: Colors.black12,
            blurRadius: 6.0,
            offset: Offset(0, 2),
        ),
    ],
);

final gradientApp = BoxDecoration(
    gradient: LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: [Colors.blue, Colors.white]
    )
);