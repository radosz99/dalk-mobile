import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';


class MVPArea extends StatelessWidget {
  MVPArea({@required this.imgPath, @required this.name, @required this.surname, @required this.statisticLine, @required this.team});

  final String imgPath;
  final String name;
  final String surname;
  final String statisticLine;
  final String team;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Text(
            'MVP TYGODNIA',
            style: TextStyle(
              fontFamily: 'SourceSansPro',
              fontWeight: FontWeight.bold,
              fontSize: 26.0
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: CachedNetworkImage(
                  imageUrl: imgPath,
                  height: 100,
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('$name $surname',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.black,
                          fontFamily: 'SourceSansPro',
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    Text(team,
                      style: TextStyle(
                        color: Colors.grey,
                        fontFamily: 'SourceSansPro',
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(statisticLine,
                      style: TextStyle(
                        color: Color.fromRGBO(12, 53, 104, 1.0),
                          fontFamily: 'SourceSansPro',
                        fontWeight: FontWeight.bold,
                        fontSize: 22.0
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}