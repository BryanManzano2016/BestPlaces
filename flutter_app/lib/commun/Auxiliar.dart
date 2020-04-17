import 'package:flutter/material.dart';

Map<String, double> sizeScreen(BuildContext context, double widthLess,
        double heightLess, {double factorWidth = 1, double factorHeight = 1}) {
    return {
        "wd": (MediaQuery.of(context).size.width - widthLess) / factorWidth,
        "hg": (MediaQuery.of(context).size.height - heightLess) / factorHeight
    };
}

Widget imageWithRadious(String pathImage, double radious){
    return ClipRRect(
        borderRadius: BorderRadius.circular(radious),
        child: Image.asset('assets/images/' + pathImage),
    );
}
Widget iconByCountries(String pathImage){
    return ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Image.asset('assets/countries/$pathImage'),
    );
}

void goToScreenLess(BuildContext context, StatelessWidget screen){
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => screen),
    );
}
void goToScreenFul(BuildContext context, StatefulWidget screen){
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => screen),
    );
}
IconButton iconButtonBack(BuildContext context){
    return IconButton(icon: Icon(Icons.arrow_back),
        onPressed: (){
            Navigator.pop(context);
        }
    );
}


