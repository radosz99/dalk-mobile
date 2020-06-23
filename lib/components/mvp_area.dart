import 'package:flutter/material.dart';

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
            Column(
              children: <Widget>[
                Image.network(imgPath),
              ],
            ),
            Column(
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
            )
          ],
        ),
      ],
    );
  }
}