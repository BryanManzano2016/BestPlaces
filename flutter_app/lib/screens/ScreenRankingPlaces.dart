import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScreenRankingPlaces extends StatelessWidget {
    final String placesby;
    ScreenRankingPlaces({Key key, this.placesby}) : super(key: key);
    @override
    Widget build(BuildContext context) {
        return SafeArea(child:Scaffold(
            body:  countryInfo(),
        ));
    }
}

class countryInfo extends StatelessWidget {
    @override
    Widget build(BuildContext context) {

        final countryImg = Container(
            width: 190,
            height: 190,
            padding: const EdgeInsets.all(8.0),
            decoration: new BoxDecoration(
                //shape: BoxShape.circle,
                image: new DecorationImage(
                    fit: BoxFit.fill,
                    image: ExactAssetImage('assets/images/Ecuador.png'),
                )
            ),
        );

        
        final countryName = Container(
            padding: EdgeInsets.only(top: 15, bottom: 10),
            child: Text(
                'ECUADOR',
                style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
            ),
        );
        

        final description = Container(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            child: Text(
                'Ecuador es un país que se extiende por el ecuador en la costa oeste de Sudamérica. Sus diversos paisajes abarcan '
                    'la selva del Amazonas, las zonas altas andinas y las islas Galápagos de abundante fauna.',
                style: TextStyle(fontSize: 18.0, ),
            ),
        );


        final countryData = Container(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                    Container(
                        padding: EdgeInsets.only(top: 10, bottom: 10),
                      child: Text(
                          'Continente: America',
                          style: TextStyle(fontSize: 18.0 ),
                      ),
                    ),

                    Container(
                        padding: EdgeInsets.only(top: 10, bottom: 10),
                      child: Text(
                          'Poblacion: 100000',
                          style: TextStyle(fontSize: 18.0 ),
                      ),
                    ),

                    Container(
                        padding: EdgeInsets.only(top: 10, bottom: 10),
                      child: Text(
                          'Clima: 30 grados',
                          style: TextStyle(fontSize: 18.0 ),
                      ),
                    ),

                ],
            ),
        );


        Column _buildButtonColumn(IconData icon, String label) {
            return Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                    Icon(icon, color: Colors.green[500], size: 30,),
                    Container(
                        child: Text(
                            label,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w800,
                                fontFamily: 'Roboto',
                                letterSpacing: 0.5,
                                fontSize: 18,
                                height: 2,
                            ),
                        ),
                    ),
                ],
            );
        }


        final buttonSection = Container(

            padding: EdgeInsets.only(top: 40),

            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                    _buildButtonColumn(Icons.star, '7/10'),
                    _buildButtonColumn(Icons.star_border, 'Rate'),
                    _buildButtonColumn(Icons.comment, 'Reviews'),
                ],
            ),
        );



        return ListView(
            padding: EdgeInsets.all(10),
            children: <Widget>[
                countryImg,
                countryName,
                description,
                countryData,
                buttonSection,
            ],
        );
    }

}
