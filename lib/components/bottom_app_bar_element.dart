import 'package:flutter/material.dart';

class BottomAppBarElement extends StatelessWidget {

  BottomAppBarElement({this.icon, this.text, this.color});

  final String text;
  final IconData icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Column(
        children: <Widget>[
          IconButton(
            iconSize: 30.0,
            icon: Icon(
              icon,
              color: color,
            ),
          ),
          Text(
            text,
            style: TextStyle(
                fontFamily: 'SourceSansPro',
                fontSize: 11.0,
                color: Colors.white
            ),
          )
        ],
      ),
    );
  }
}
