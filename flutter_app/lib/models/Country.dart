import 'package:flutterapp/commun/Constants.dart';

import 'Place.dart';

class Country implements Place {
    String _id;
    String _name;
    int _numPoblation;
    String _pathImage;
    double _rating;
    Continent _continent;

    Continent get continent => _continent;
    @override
    String get id => _id;
    @override
    String get name => _name;
    @override
    int get numPoblation => _numPoblation;
    @override
    String get pathImage => _pathImage;
    @override
    double get rating => _rating;

    Country(this._id, this._name, this._rating, this._pathImage,
        [this._numPoblation, this._continent]);
}

