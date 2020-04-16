import 'dart:ui';
import 'package:flutter/material.dart';

class CountryInformation extends StatelessWidget {
    final String placesby;
    CountryInformation({Key key, this.placesby}) : super(key: key);
    @override
    Widget build(BuildContext context) {
        return SafeArea(child:Scaffold(
            body: countryInfo(),
        ));
    }
}



class countryInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

      final coutryImg = Padding(
        padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
              radius: 72.0,
              backgroundColor: Colors.transparent,
              backgroundImage: AssetImage('assets/images/Ecuador.png'),
          ),
      );


      final countryName = Padding(
        padding: EdgeInsets.all(8.0),
          child: Text(
              'ECUADOR',
                  style: TextStyle(fontSize: 28.0, color: Colors.blue),
          ),
      );


      final description = Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
              'Ecuador es un país que se extiende por el ecuador en la costa oeste de Sudamérica. Sus diversos paisajes abarcan la selva del Amazonas, las zonas altas andinas y las islas Galápagos de abundante fauna.',
              style: TextStyle(fontSize: 28.0, color: Colors.blue),
          ),
      );


    return ListView(
        padding: const EdgeInsets.all(10.0),
        children: <Widget>[
            Column(
                children: <Widget>[
                    coutryImg,
                    countryName,
                    description,
                ],
            ),
        ],
    );
  }
}





