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
        child: Image.asset('assets/' + pathImage),
    );
}