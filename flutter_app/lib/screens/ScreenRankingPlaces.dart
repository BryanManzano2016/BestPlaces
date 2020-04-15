import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutterapp/commun/Auxiliar.dart';

class ScreenRankingPlaces extends StatelessWidget {
    final String placesby;
    ScreenRankingPlaces({Key key, this.placesby}) : super(key: key);
    @override
    Widget build(BuildContext context) {
        return SafeArea(child:Scaffold(
            appBar: PreferredSize(
            preferredSize: Size.fromHeight(40.0),
            child: AppBar(
                leading: iconButtonBack(context)
            )
        ),
            body:  RankingList(),
        ));
    }
}

class _CountryDescription extends StatelessWidget {
    _CountryDescription({
        Key key,
        this.country,
        this.rating,
        this.votes,
    }) : super(key: key);

    final String country;
    final double rating;
    final int votes;

    @override
    Widget build(BuildContext context) {
        return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
                Container(
                    child: Expanded(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                                Text(
                                    '$country',
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold,
                                    ),

                                ),

                                Divider(color: Colors.blue,),

                                Text(
                                    'RATING: $rating',
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                        fontSize: 15.0,
                                        //color: Colors.black54,

                                    ),
                                ),
                                Text(
                                    'VOTOS: $votes',
                                    style: const TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.black87,

                                    ),
                                ),

                            ],
                        ),
                    ),
                ),

            ],
        );
    }
}

class CustomList extends StatelessWidget {
    CustomList({
        Key key,
        this.thumbnail,
        this.country,
        this.rating,
        this.votes,
    }) : super(key: key);

    final Widget thumbnail;
    final String country;
    final double rating;
    final int votes;

    @override
    Widget build(BuildContext context) {
        return Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: SizedBox(
                height: 80,
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                        AspectRatio(
                            aspectRatio: 1.2,
                            child: thumbnail,
                        ),
                        Expanded(
                            child: Padding(
                                padding: const EdgeInsets.fromLTRB(20.0, 0.0, 2.0, 0.0),
                                child: _CountryDescription(
                                    country: country,
                                    rating: rating,
                                    votes: votes,
                                ),
                            ),
                        )
                    ],
                ),
            ),
        );
    }
}

class RankingList extends StatelessWidget {
    RankingList({Key key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return ListView(
            padding: const EdgeInsets.all(10.0),
            children: <Widget>[
                CustomList(
                    thumbnail: Container(
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: ExactAssetImage('assets/images/Ecuador.png'),
                                fit: BoxFit.fitHeight,
                            )
                        ),
                    ),
                    country: '1. ECUADOR',
                    rating: 5.8,
                    votes: 500,
                ),
                CustomList(
                    thumbnail: Container(
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: ExactAssetImage('assets/images/Argentina.png'),
                                fit: BoxFit.fitHeight,
                            )

                        ),
                    ),
                    country: '2. ARGENTINA',
                    rating: 5.8,
                    votes: 500,
                ),
            ],
        );
    }
}
