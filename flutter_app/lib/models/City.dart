import 'Country.dart';
import 'Place.dart';

class City implements Place {
    String _id;
    String _name;
    int _numPoblation;
    String _pathImage;
    double _rating;
    Country _country;

    Country get country => _country;
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

    City(this._id, this._name, this._rating, this._pathImage,
        [this._numPoblation, this._country]);
}