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
        Text(
          'MVP TYGODNIA',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0
          ),
        ),
        Row(
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
                children: <Widget>[
                  Text('$name $surname',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Text(team,
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(statisticLine,
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}